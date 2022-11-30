/*1. Liste o nome das canções, alterando o nome da coluna para ‘Musica’ e seus
respectivos gêneros, alterando o nome da coluna para ‘Genero’, ordenando
a lista alfabeticamente por Genero.*/

select c.nome as Musica, g.nome as Genero
from cancoes c
inner join generos g
on c.id = g.id
order by g.nome;

/*2. Liste o nome e o sobrenome dos clientes, concatenados na mesma coluna,
atribuindo o nome Clientes para esta coluna. Liste também o país de
origem de cada cliente, atribuindo o nome Pais para a coluna, ordenando
alfabeticamente pela coluna Cliente.*/

select concat(c.nome, ' ', c.sobrenome) as Clientes, c.pais as Pais
from clientes c
order by clientes asc;

-- 3. Liste todas as canções com seus respectivos albuns;

select c.nome as Canções, a.titulo as Albuns
from cancoes c
left join albuns a
on c.id = a.id;

/*4. Liste a quantidade de músicas por gênero. Agrupe por gênero,, ordenando
de forma decrescente pela quantidade de músicas.*/

select count(c.id) as QtdMusicas, g.nome as Genero
from cancoes c
right join generos g
on c.id = g.id
group by g.nome
order by c.id desc;


