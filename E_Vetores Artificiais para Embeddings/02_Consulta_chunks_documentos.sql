SELECT
    DC.IdChunk,
    DC.IdDocumento,
    D.Titulo,
    DC.NumeroChunk,
    DC.ConteudoChunk
FROM dbo.DocumentoChunk DC
INNER JOIN dbo.Documento D
    ON D.IdDocumento = DC.IdDocumento
ORDER BY DC.IdDocumento;
GO