use musimundos;

select *
from albuns;

select id_artista as CodArtista, count(id) as QtdAlbuns
from albuns
group by id_artista
having id_artista = 113
order by QtdAlbuns desc;

select id_artista as CodArtista, titulo
from albuns
where id_artista = 113;

select id_artista as CodArtista, count(id) as QtdAlbuns
from albuns
group by id_artista
having	id_artista = 110;

select * from faturas;

select pais_cobranca, count(id) as QtdFaturas, sum(valor_total) as TotalFatura,
format((Valor_total),2) as MediaFaturas
from faturas
group by pais_cobranca
order by TotalFatura desc;

select pais_cobranca, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura, min(valor_total) as MenorFatura
from faturas
group by pais_cobranca
order by TotalFatura desc;

select pais_cobranca as Pais, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura
from faturas
group by pais_cobranca
having MaiorFatura > 20.00;

select id_cliente as Cliente, sum(valor_total) as TotalFatura, max(valor_total) as MaiorFatura,
pais_cobranca as Pais
from faturas
group by id_cliente
having  TotalFatura between 20.00 and 40.00
