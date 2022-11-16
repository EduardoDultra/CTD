 select *
 
 FROM produtos;
 select	ProdutoID, ProdutoNome, CategoriaID, PrecoUnitario,
 FORMAT ((PrecoUnitario - (PrecoUnitario * 20)/100),2) as PrecoPromocional
 From	produtos
 Order By PrecoPromocional DESC;
 
SELECT *from clientes;
select Empresa, Contato, Titulo, Pais
from clientes
where Pais like 'Bra_il';

select CategoriaNome
From categorias
Order by CategoriaNome;
 
 select Empresa, Contato, Titulo, Pais
 from clientes
 where titulo like '%Sale%';
 
 select * from provedores;
 
 select ProvedorID, Empresa, Contato, Pais
 from provedores
 where pais like '%Brazil%';
 
 select ProdutoID, ProdutoNome, ProvedorID, CategiraID, PrecoUnitario,
 Format ((PrecoUnitario -(PrecoUnitario * 50)/100),2) as PrecoPromocional
 From produtos
 where ProvedorID = 7;
 
 select ProdtuoID, ProdutoNome, CategoriaID,
 Format(PrecoUnitario,2) as PrecoUnitario
 from produtos
 where PrecoUnitario between 10 and 20;