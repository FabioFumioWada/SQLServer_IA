USE LAB_IA_SQL2025;
GO

DECLARE @VetorConsulta VECTOR(3) = '[1.0, 0.1, 0.0]';

SELECT
    Id,
    Descricao,
    Vetor,
    VECTOR_DISTANCE('cosine', Vetor, @VetorConsulta) AS Distancia
FROM dbo.LabVetor
ORDER BY Distancia ASC;
GO