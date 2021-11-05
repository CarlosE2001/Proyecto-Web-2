CREATE TABLE [dbo].[Publicacion]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Fecha] DATE NOT NULL, 
    [Titulo] NVARCHAR(100) NOT NULL, 
    [LinkImg] NVARCHAR(500) NOT NULL, 
    [Resumen] NVARCHAR(1000) NOT NULL, 
    [AutorFK] INT NOT NULL FOREIGN KEY REFERENCES Autor([Id]), 
    [CategoriaFK] INT NULL FOREIGN KEY REFERENCES Categoria([Id])
)


