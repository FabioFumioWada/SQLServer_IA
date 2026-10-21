USE LAB_IA_SQL2025;
GO

/* =====================================================
   CATEGORIAS
   ===================================================== */

CREATE TABLE dbo.CategoriaDocumento
(
    IdCategoria     INT IDENTITY(1,1) PRIMARY KEY,
    Nome            NVARCHAR(100) NOT NULL,
    Descricao       NVARCHAR(500) NULL
);
GO


/* =====================================================
   DOCUMENTOS
   ===================================================== */

CREATE TABLE dbo.Documento
(
    IdDocumento     INT IDENTITY(1,1) PRIMARY KEY,
    IdCategoria     INT NOT NULL,
    Titulo          NVARCHAR(200) NOT NULL,
    Conteudo        NVARCHAR(MAX) NOT NULL,
    Fonte           NVARCHAR(200) NULL,
    DataCriacao     DATETIME2 NOT NULL DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Documento_Categoria
        FOREIGN KEY (IdCategoria)
        REFERENCES dbo.CategoriaDocumento(IdCategoria)
);
GO


/* =====================================================
   CHUNKS
   ===================================================== */

CREATE TABLE dbo.DocumentoChunk
(
    IdChunk         INT IDENTITY(1,1) PRIMARY KEY,
    IdDocumento     INT NOT NULL,
    NumeroChunk     INT NOT NULL,
    ConteudoChunk   NVARCHAR(MAX) NOT NULL,

    CONSTRAINT FK_Chunk_Documento
        FOREIGN KEY (IdDocumento)
        REFERENCES dbo.Documento(IdDocumento)
);
GO


/* =====================================================
   PERGUNTAS PARA TESTES
   ===================================================== */

CREATE TABLE dbo.PerguntaTeste
(
    IdPergunta      INT IDENTITY(1,1) PRIMARY KEY,
    Pergunta        NVARCHAR(1000) NOT NULL,
    CategoriaEsperada NVARCHAR(100) NULL
);
GO


/* =====================================================
   HISTORICO
   ===================================================== */

CREATE TABLE dbo.HistoricoConsulta
(
    IdConsulta      BIGINT IDENTITY(1,1) PRIMARY KEY,
    Pergunta        NVARCHAR(1000) NOT NULL,
    Resposta        NVARCHAR(MAX) NULL,
    DataConsulta    DATETIME2 NOT NULL DEFAULT SYSDATETIME()
);
GO