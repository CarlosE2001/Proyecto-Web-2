CREATE TABLE [dbo].[PublicacionPerteneceACategoria]
(
	[IdPublicacion] INT NOT NULL FOREIGN KEY REFERENCES Publicacion(Id), 
    [IdCategoria] INT NOT NULL FOREIGN KEY REFERENCES Categoria(Id), 
    PRIMARY KEY ([IdPublicacion], [IdCategoria])
    
)
