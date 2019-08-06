USE M_Gufos;

INSERT INTO Usuarios (Nome,Email,Senha,Permissao)
	VALUES ('Administrador','admin@admin.com','123456','Administrador');

INSERT Usuarios (Nome,Email,Senha,Permissao)
	VALUES ('Josias Calebe','jc@senai.com','123456','Aluno');

INSERT Categorias (Nome)
	VALUES ('Jogos'),('Meetup'),('Futebol');

INSERT Eventos (Titulo,Descricao,DataEvento,Localizacao,IdCategoria)
	VALUES ('Ping-Pong','Campeonato de Ping-Pong a freguesia continua',GETDATE(),'SENAI de Informática, 539',1);

INSERT Presencas (IdUsuario,IdEvento)
	VALUES (2,1);