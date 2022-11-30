create view vw_detalheFilmes as 
select c.nome as categoria, f.titulo, f.ano_lancamento, concat(a.nome,' ', a.sobrenome) as Ator
from categoria c 
left join filme_categoria fc
on c.categoria_id = fc.categoria_id
left join filme f
on fc.filme_id = f.filme_id
left join filme_ator fa
on f.filme_id = fa.filme_id
left join ator a
on fa.ator_id = a.ator_id;

select * from vw_detalheFilmes;