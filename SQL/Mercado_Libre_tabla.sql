CREATE TABLE ProductosMercadoLibre (
                ID INT IDENTITY(1,1) PRIMARY KEY,
                URL NVARCHAR(MAX),
                Nombre NVARCHAR(1000),
                Precio INT,
                Calificacion FLOAT,
                Ventas INT,
                ImagenURL NVARCHAR(MAX),
                FechaExtraccion DATETIME DEFAULT GETDATE()
            )

