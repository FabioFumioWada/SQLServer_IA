/* Orientação:

Agora vamos inserir alguns vetores didáticos:
*/
USE LAB_IA_SQL2025;
GO

INSERT INTO dbo.LabVetor
(
    Descricao,
    Vetor
)
VALUES
('Documento A', '[1.0, 0.0, 0.0]'),
('Documento B', '[0.9, 0.1, 0.0]'),
('Documento C', '[0.0, 1.0, 0.0]'),
('Documento D', '[0.0, 0.0, 1.0]');
GO

/*
SELECT *
FROM dbo.LabVetor;
GO
*/

