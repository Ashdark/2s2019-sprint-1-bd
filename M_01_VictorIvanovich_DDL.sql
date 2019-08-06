USE M_Gufos;
CREATE DATABASE M_Gufos;

Create table Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (255) NOT NULL
	,Email VARCHAR (255) NOT NULL UNIQUE
	,Senha VARCHAR(30) NOT NULL
	,Permissao VARCHAR (255) NOT NULL 
);

Create table Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL Unique
);

Create table Eventos(
	IdEvento INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR (255) NOT NULL
	,Descricao Text
	,DataEvento Datetime NOT NULL
	,Localizacao varchar(255) NULL
	,Ativo Bit NOT NULL Default(1)
	,IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)
);

Create table Presencas(
	IdUsuario INT Foreign Key REFERENCES Usuarios(IdUsuario)
	,IdEvento INT Foreign Key REFERENCES Eventos(IdEvento)
);