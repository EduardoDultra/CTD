use musimundos;

select * from cancoes
where nome like '%love%';

select nome, compositor
from cancoes
where nome like '_R%N';

select * from cancoes
order by id desc
limit 5;

select * from artistas
where id between 15 and 35;

select nome, sobrenome, cidade, pais from clientes;

select nome, sobrenome, cidade, pais from clientes where pais like '%USa%';

select * from cancoes where duracao_milisegundos between 200000 and 300000;

select * from clientes
where pais in ('Spain','Argentina');

select nome from generos
order by nome asc;

select nome, sobrenome, cidade, pais from clientes
order by pais desc, cidade asc;

select id, nome from cancoes;

select id, nome from cancoes
limit 10 offset 10;