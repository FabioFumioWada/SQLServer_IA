/* Procedimento:
Antes dos vetores, vale enxergar exatamente o problema que a busca semântica resolverá.
*/

USE LAB_IA_SQL2025;
GO

SELECT
    D.IdDocumento,
    C.Nome AS Categoria,
    D.Titulo,
    D.Conteudo
FROM dbo.Documento D
INNER JOIN dbo.CategoriaDocumento C
    ON C.IdCategoria = D.IdCategoria
WHERE
    D.Titulo LIKE '%aproveitamento%'
    OR D.Conteudo LIKE '%aproveitamento%';
GO