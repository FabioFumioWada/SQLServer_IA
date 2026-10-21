/* =====================================================
   LABORATORIO SQL SERVER 2025 + IA
   ETAPA 01 - Criacao do banco
   ===================================================== */

USE master;
GO

IF DB_ID('LAB_IA_SQL2025') IS NULL
BEGIN
    CREATE DATABASE LAB_IA_SQL2025;
END;
GO

USE LAB_IA_SQL2025;
GO

SELECT 
    DB_NAME() AS BancoAtual,
    @@VERSION AS VersaoSQLServer;
GO