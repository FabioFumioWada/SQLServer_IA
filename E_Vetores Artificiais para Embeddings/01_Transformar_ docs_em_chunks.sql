/*
    vetores artificiais para embeddings com significado semântico
*/

USE LAB_IA_SQL2025;
GO

INSERT INTO dbo.DocumentoChunk
(
    IdDocumento,
    NumeroChunk,
    ConteudoChunk
)
SELECT
    D.IdDocumento,
    1,
    D.Conteudo
FROM dbo.Documento D
WHERE NOT EXISTS
(
    SELECT 1
    FROM dbo.DocumentoChunk DC
    WHERE DC.IdDocumento = D.IdDocumento
);
GO
