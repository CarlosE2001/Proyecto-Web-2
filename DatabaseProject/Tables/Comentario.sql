CREATE TABLE [dbo].[Comentario]
(
	[Id] INT NOT NULL , 
    [IdPublicacionPKFK] INT NOT NULL FOREIGN KEY REFERENCES Publicacion([Id]), 
    PRIMARY KEY ([Id], [IdPublicacionPKFK])
)
