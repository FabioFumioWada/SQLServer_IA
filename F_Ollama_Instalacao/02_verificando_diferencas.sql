/*
Esse teste é particularmente importante porque há diferença entre: 

    PowerShell → Caddy → Ollama 

e: 

    SQL Server Service → Caddy → Ollama 

A referência de integração SQL Server 2025 + Ollama mostra esse mesmo padrão de teste via sp_invoke_external_rest_endpoint contra /api/tags. 
*/

USE LAB_IA_SQL2025;
GO

DECLARE @ReturnCode INT; 
DECLARE @Response NVARCHAR(MAX); 
   

EXEC    @ReturnCode = sys.sp_invoke_external_rest_endpoint 
        @method = 'GET', 
        @url = 'https://localhost:8443/api/tags', 
        @headers = N'{"Accept":"application/json"}', 
        @response = @Response OUTPUT; 

SELECT
        @ReturnCode AS ReturnCode, 
        @Response AS Response; 

GO 