
MERGE INTO [dbo].[Autor] AS TARGET
USING
(VALUES
(1,'Sebastian Montero Castro'),
(2,'Carlos Espinoza Peraza')
)
AS SOURCE ([Id],[NombreCompleto]) ON TARGET.[Id] = SOURCE.[Id]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([Id],[NombreCompleto]) VALUES ([Id],[NombreCompleto]);

MERGE INTO [dbo].[Categoria] AS TARGET
USING
(VALUES
(1,'Ciencias de la computación'),
(2,'Inteligencia Artifical')
)
AS SOURCE ([Id],[NombreCategoria]) ON TARGET.[Id] = SOURCE.[Id]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([Id],[NombreCategoria]) VALUES ([Id],[NombreCategoria]);



MERGE INTO [dbo].[Publicacion] AS TARGET
USING
(VALUES
(1,'2016-01-01','Machine Learning','https://ih1.redbubble.net/image.893361643.4979/flat,750x,075,f-pad,750x1000,f8f8f8.jpg','Machine learning is pretty cool and fun and exciting. Heres why:',2,2)
)
AS SOURCE ([Id],[Titulo],[Fecha],[LinkImg],[Resumen],[AutorFK],[CategoriaFK]) ON TARGET.[Id] = SOURCE.[Id]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([Id],[Titulo],[Fecha],[LinkImg],[Resumen],[AutorFK],[CategoriaFK]) VALUES ([Id],[Titulo],[Fecha],[LinkImg],[Resumen],[AutorFK],[CategoriaFK]);

MERGE INTO [dbo].[Comentario] AS TARGET
USING
(VALUES
(1,1,'Muy interesante la publicacion amigo un saludo!'),
(2,1,'hola!')
)
AS SOURCE ([Id],[IdPublicacionPKFK],[Texto]) ON TARGET.[Id] = SOURCE.[Id]
WHEN NOT MATCHED BY TARGET THEN
INSERT ([Id],[IdPublicacionPKFK],[Texto]) VALUES ([Id],[IdPublicacionPKFK],[Texto]);