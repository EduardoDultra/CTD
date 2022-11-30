select * from sakila.locacao;

SELECT i.inventario_id,i.loja_id, concat(c.nome, ' ', c.sobrenome) as Cliente, f.titulo as Filme, 
concat(fu.nome, ' ', fu.sobrenome) as Funcionario, l.data_locacao, f.preco_locacao
FROM inventario i 
INNER JOIN locacao l
ON i.inventario_id = l.inventario_id
INNER JOIN cliente c
ON l.cliente_id = c.cliente_id
INNER JOIN funcionario fu
ON l.funcionario_id = fu.funcionario_id
INNER JOIN filme f
ON i.filme_id = f.filme_id;

select f.titulo as filme, i.nome as idioma
from filme f
right join idioma i
on f.idioma_id = i.idioma_id
order by filme;

select concat(c.nome, ' ', c.sobrenome) as cliente, l.locacao_id,
l.data_locacao, p.data_pagamento, p.valor
from cliente c
left join locacao l
on c.cliente_id = l.cliente_id
left join pagamento p
on c.cliente_id = p.cliente_id and l.locacao_id = p.locacao_id
order by p.data_pagamento, valor desc;

select f.titulo as filme, f.preco_locacao as preco, count(l.locacao_id) as qtdLocacao
from filme f
left join inventario i
on f.filme_id = i.filme_id
left join locacao l
on i.inventario_id = l.inventario_id
group by f.titulo
order by qtdLocacao desc;

select c.nome as categoria, f. titulo as filme, f.preco_locacao as preco, count(l.locacao_id) as qtdLocacao
from categoria c
inner join filme_categoria fc
on c.categoria_id = fc.categoria_id
inner join filme f
on f.filme_id = fc.filme_id
left join inventario i
on f.filme_id = i.filme_id
left join locacao l
on i.inventario_id = l.inventario_id
group by f.titulo
having count(l.locacao_id) = 0
order by qtdLocacao desc;



