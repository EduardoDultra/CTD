CREATE VIEW EmpregadoVenda AS
SELECT f.FaturaId, concat(e.nome,' ' , e.sobrenome) as Funcionario,
DataFatura, Transporte
FROM faturas f
INNER JOIN empregados e
ON f.EmpregadoID = e.EmpregadoID;

SELECT ev.FaturaId, ev.Funcionario, ev.DataFatura, c.contato
FROM EmpregadoVenda ev
INNER JOIN faturas f
ON ev.FaturaId = f.FaturaId
INNER JOIN clientes c 
ON c.ClienteID = f.ClienteID;

DELETE FROM EmpregadoVenda
where EmpregadoID = 2;

UPDATE EmpregadoVenda set funcionario = 'Nanci Ferreira'
WHERE FaturaID = 10258;

select * from empregadovenda;

CREATE VIEW funcionarios as
SELECT Nome, sobrenome
from empregados;

select * from funcionarios;

UPDATE funcionarios set sobrenome = 'Rocha'
Where Nome = 'Nancy';

CREATE VIEW DetalhesEnvio AS
SELECT FaturaId, date_format(DataFatura, '%d/%m/%Y') as DataFatura,
date_format(DataEnvio, '%d/%m/%Y') as DataEnvio,
Format(transporte,2) as Transporte,
CONCAT(EnderecoEnvio, ' ', CidadeEnvio, ' ', CodigoPostalEnvio, ' ' , PaisEnvio) AS Destino
From Faturas ;

SELECT * FROM DetalhesEnvio;

SELECT c.Empresa, de.FaturaId, de.Transporte, de.DataFatura, de.DataEnvio
FROM Correios c 
INNER JOIN faturas f 
ON c.CorreioID = f.FormaEnvio
INNER JOIN DetalhesEnvio de
ON de.FaturaID = f.FaturaId;

CREATE VIEW produtos_em_estoque AS
SELECT c.CategoriaNome, ProdutoID, ProdutoNome, PrecoUnitario
FROM categorias c
LEFT JOIN produtos p
ON c.CategoriaID = p.CategoriaID;

SELECT pe.CategoriaNome, pe.ProdutoID, pe.ProdutoNome, pe.PrecoUnitario,  df.Quantidade
FROM produtos_em_estoque pe
INNER JOIN detalhefatura df
ON pe.ProdutoId = df.ProdutoID;
