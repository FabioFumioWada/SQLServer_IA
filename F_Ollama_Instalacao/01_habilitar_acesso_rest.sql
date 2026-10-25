/*Esse é o procedimento indicado para permitir as chamadas REST usadas nesse cenário de integração. */
USE LAB_IA_SQL2025;
GO

EXEC sp_configure 'external rest endpoint enabled', 1; 
RECONFIGURE; 
GO