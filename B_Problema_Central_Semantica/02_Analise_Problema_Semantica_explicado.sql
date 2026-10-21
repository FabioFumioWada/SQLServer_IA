/*Procedimento:

Agora teste a pergunta que criamos:

"Posso eliminar uma disciplina que já cursei anteriormente?"
*/

DECLARE @Pergunta NVARCHAR(1000) =
    'Posso eliminar uma disciplina que ja cursei anteriormente?';

SELECT
    D.IdDocumento,
    C.Nome AS Categoria,
    D.Titulo,
    D.Conteudo
FROM dbo.Documento D
INNER JOIN dbo.CategoriaDocumento C
    ON C.IdCategoria = D.IdCategoria
WHERE
    D.Titulo LIKE '%' + @Pergunta + '%'
    OR D.Conteudo LIKE '%' + @Pergunta + '%';
GO


/*Orientação 1
É provável que essa segunda consulta não encontre o documento relevante, porque estamos procurando correspondência textual, enquanto conceitualmente esperamos encontrar algo como:

Política de aproveitamento de estudos

Esse é justamente o problema que começaremos a atacar com embeddings.
*/


/*Orientação 2
Depois desses dois testes, nosso próximo passo será particularmente interessante: alterar a estrutura DocumentoChunk para receber um campo VECTOR, criar vetores e executar nossa primeira comparação de similaridade com VECTOR_DISTANCE.

Vamos fazer isso de forma incremental, para você conseguir observar claramente a diferença entre palavra, vetor, embedding, busca semântica e, finalmente, RAG.
*/