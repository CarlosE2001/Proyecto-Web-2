CREATE TABLE [dbo].[Comentario]
(
	[Id] INT NOT NULL , 
    [IdPublicacionPKFK] INT NOT NULL FOREIGN KEY REFERENCES Publicacion([Id]), 
    [Texto] NVARCHAR(MAX) NOT NULL, 
    PRIMARY KEY ([Id], [IdPublicacionPKFK])
)
