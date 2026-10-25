/*
EXEC sp_configure 'external rest endpoint enabled';
GO


USE LAB_IA_SQL2025;
GO

SELECT
    SUSER_SNAME() AS LoginAtual,
    USER_NAME() AS UsuarioBanco,
    HAS_PERMS_BY_NAME(
        DB_NAME(),
        'DATABASE',
        'EXECUTE ANY EXTERNAL ENDPOINT'
    ) AS TemPermissao;
GO
*/
/*
SELECT
    CAST(SERVERPROPERTY('MachineName') AS NVARCHAR(128)) AS MachineName,
    CAST(SERVERPROPERTY('ServerName') AS NVARCHAR(128)) AS ServerName,
    @@SERVERNAME AS SQLServerName;
GO
*/

USE LAB_IA_SQL2025;
GO

DECLARE @ReturnCode INT;
DECLARE @Response NVARCHAR(MAX);

EXEC @ReturnCode = sys.sp_invoke_external_rest_endpoint
     @method = 'GET',
     @url = N'https://ollama.local:8443/api/tags',
     @headers = N'{"Accept":"application/json"}',
     @response = @Response OUTPUT;

SELECT
    @ReturnCode AS ReturnCode,
    @Response AS Response;
GO
