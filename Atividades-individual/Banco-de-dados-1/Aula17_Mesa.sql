create view vw_controleEstoque as
select ProdutoID, ProdutoNome, round(PrecoUnitario) as PrecoUnitario,UnidadesEstoque,UnidadesPedidas, 
case when UnidadesPedidas = 0 then 'BAIXA'
WHEN UnidadesPedidas < UnidadesEstoque then 'MÉDIA'
when UnidadesPedidas <2* UnidadesEstoque then 'URGENTE'
ELSE 'PRIORITÁRIO' 
end as Prioridade
from Produtos;


select * from vw_controleEstoque;

select prioridade, count(ProdutoID) as QTDProdutos,
format(avg(PrecoUnitario),2) as PreçoMédio 
from vw_controleEstoque
group by prioridade
having count(ProdutoID) > 5;


