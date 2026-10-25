DECLARE @VetorConsulta VECTOR(3) = '[0.0, 0.9, 0.1]';

SELECT
    Id,
    Descricao,
    Vetor,
    VECTOR_DISTANCE('cosine', Vetor, @VetorConsulta) AS Distancia
FROM dbo.LabVetor
ORDER BY Distancia ASC;
GO