select * from clientes
where pais like 'Brazil';

SELECT 
    id_genero, COUNT(id_genero)
FROM
    cancoes
GROUP BY id_genero
HAVING id_genero = 6;

select preco_unitario, sum(preco_unitario)
 from itens_faturas;
 
 select duracao_milisegundos, avg(duracao_milisegundos)
 from cancoes
 group by id_album
 having id_album = 4;
 
 select bytes, min(bytes)
 from cancoes;
 
 




/*select id_artista as CodArtista, count(id) as QtdAlbuns
from albuns
group by id_artista
having id_artista = 113
order by QtdAlbuns desc;