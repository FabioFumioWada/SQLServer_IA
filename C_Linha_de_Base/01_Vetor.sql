
/*Orientação:
Antes de conectar qualquer modelo de IA, quero mostrar na prática o que é um vetor 
dentro do SQL Server.
*/

USE LAB_IA_SQL2025;
GO

DROP TABLE IF EXISTS dbo.LabVetor;
GO

CREATE TABLE dbo.LabVetor
(
    Id          INT IDENTITY(1,1) PRIMARY KEY,
    Descricao   NVARCHAR(100),
    Vetor       VECTOR(3)
);
GO