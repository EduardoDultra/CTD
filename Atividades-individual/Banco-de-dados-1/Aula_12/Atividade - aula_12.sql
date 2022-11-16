select * from cancao
where titulo like '%Z%';

select * from cancao
where titulo like '_a%s';

select idPlaylist as 'ID Playlist', idusuario as 'ID Usuario', qtdcancoes as 'Quantidade cações',  titulo as 'Titulo', idEstado as 'ID Estado', DataCriacao as 'Data Criação', DataExclusao as 'Data Exclusão'
from playlist;

select * from usuario
order by  Data_nac asc
limit 5 offset 10;

select idcancao, titulo, qtdreproducao from cancao
order by qtdreproducao desc
limit 5;

select idAlbum, titulo from album
order by titulo;

select * from album
where imagemcapa is null
order by titulo;

insert into usuario (idUsuario, Nomeusuario, NomeCompleto, Data_nac, sexo, Cod, Senha, Pais_idPais, IdTipoUsuario)
values (20,'novousuariodespotify@gmail.com', 'Elmer Santos', '1991-11-15', 'M', '12', 'S4321m', '9', 1);
select * from usuario;

delete from generoxcancao
where IdGenero = 9;
select * from generoxcancao;

select * from artista where imagem is null;

update artista set imagem = 'Imagem em falta' where imagem is null;