USE LAB_IA_SQL2025;
GO

CREATE EXTERNAL MODEL ModeloEmbeddingLocal
WITH
(
    LOCATION = 'https://ollama.local:8443/api/embed',
    API_FORMAT = 'Ollama',
    MODEL_TYPE = EMBEDDINGS,
    MODEL = 'nomic-embed-text'
);
GO

/*
CREATE EXTERNAL MODEL ModeloEmbeddingLocal
WITH
(
    LOCATION = 'https://ollama.local:8443',
    API_FORMAT = 'Ollama',
    MODEL_TYPE = EMBEDDINGS,
    MODEL = 'nomic-embed-text'
);
GO
*/
