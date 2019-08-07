USE M_Gufos;

Select *
	From Categorias;

Select *
	From Usuarios;

Select *
	From Eventos;

Select *
	From Presencas;

Select E.*,C.*
FROM Eventos E
JOIN Categorias C
ON E.IdCategoria = C.IdCategoria;

Select P.*,U.*,E.*
From Presencas as P
Join Usuarios as U
On P.IdUsuario = U.IdUsuario
join Eventos E
On P.IdEvento = E.IdEvento;

Select P.*,U.*,E.*,C.*
From Presencas as P
Join Usuarios as U
On P.IdUsuario = U.IdUsuario
Join Eventos as E
On P.IdEvento = E.IdEvento
Join Categorias as C
On E.IdCategoria = C.IdCategoria;