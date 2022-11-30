create view dadosCliente as
select ClienteID, Contato, Telefone, Fax from clientes;

select * from dadosCliente;

select Contato, Telefone, Fax
from dadosCliente
where fax = '';

SELECT c.categorianome, p.ProdutoNome, coalesce(p.ProdutoNome, 'Não Tem Produto') 
FROM categorias c
left join produtos p
on c.CategoriaID = p.categoriaID;

select Contato, Telefone, Fax
from clientes
where fax like '';
create view vw_Fornecedores as
select ProvedorID, Contato, Empresa, concat(Endereco,'-','cidade','(',codigopostal,')', Pais) as Endereço
from provedores;
select * from vw_Fornecedores;

select provedorID, Contato, Empresa, Endereco, Pais
from provedores
where endereco like '%Americanas%' and Pais like 'Brazil';

create view vw_controleEstoque as 
select ProdutoID, ProdutoNome, round(PrecoUnitario), UnidadesEstoque, UnidadesPedidas, 
case when UnidadesPedidas = 0 then 'BAIXA'
when UnidadesPedidas < UnidadesEstoque then 'MEDIA'
when UnidadesPedidas < 2* UnidadesEstoque then 'URGENTE'
else 'PRIORITARIO'
end as Prioridade
from Produtos;

select * from vw_controleEstoque;

select Prioridade, count(ProdutoID) as QtdProdutos,
format((PrecoUnitario),2) as PrecoMedio
from vw_ControleEstoque
group by Prioridade
having count(ProdutoID) > 5;