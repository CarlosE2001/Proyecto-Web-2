CREATE TABLE [dbo].[Comentario]
(
	[Id] INT NOT NULL , 
    [IdPublicacionPKFK] INT NOT NULL, 
    PRIMARY KEY ([Id], [IdPublicacionPKFK])
)
