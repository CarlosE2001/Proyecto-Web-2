CREATE TABLE [dbo].[Publicacion]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Fecha] DATE NOT NULL, 
    [Titulo] NCHAR(100) NOT NULL, 
    [LinkImg] NCHAR(500) NOT NULL, 
    [Resumen] NCHAR(1000) NOT NULL, 
    [AutorFK] INT NOT NULL FOREIGN KEY REFERENCES Autor([Id]) 
)


