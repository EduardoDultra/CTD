DROP DATABASE IF EXISTS `petshop`;
CREATE DATABASE `petshop`;

USE `petshop`;

CREATE TABLE `enderecos`(
    `endereco_id` int not null auto_increment primary key,
    `logradouro` varchar(150),
    `numero` int,
    `cidade` varchar(100),
    `estado` varchar(100),
    `cep` varchar(10),
    `complemento` varchar(100)  
);

CREATE TABLE `clientes` (
    `cliente_id` int not null auto_increment primary key,
    `nome` varchar(150),
    `sobrenome` varchar(150),
    `endereco_id` int,
     constraint `fk_endereco_cliente`
        foreign key (`endereco_id`)
        references `enderecos`(`endereco_id`)
);

CREATE TABLE `animais`(
    `animal_id` int not null auto_increment primary key,
    `tipo` varchar(80),
    `nome` varchar(100),
    `porte` varchar(50),
    `raca` varchar(80),
    `cliente_id` int,
    constraint `fk_cliente_id`
        foreign key (`cliente_id`)
        references `clientes`(`cliente_id`)
);

CREATE TABLE `fornecedores`(
    `fornecedor_id` int not null auto_increment primary key,
    `nome` varchar(150),
    `cnpj` varchar(14),
    `representante` varchar(100),
    `telefone` varchar(9),
    `endereco_id` int,
    constraint `fK_endereco_fornecedor`
        foreign key (`endereco_id`)
        references `enderecos`(`endereco_id`)
);

CREATE TABLE `produtos`(
    `produto_id` int not null auto_increment primary key,
    `nome` varchar(100),
    `preco` decimal (10,2),
    `categoria` varchar(50)
);

CREATE TABLE `produtos_fornecedores`(
	`produto_fornecedores_id` int not null auto_increment primary key,
    `produto_id` int,
    `fornecedor_id` int,
	constraint `fk1_produto`
        foreign key (`produto_id`)
        references `produtos`(`produto_id`),
	constraint `fk1_fornecedor`
        foreign key (`fornecedor_id`)
        references `fornecedores`(`fornecedor_id`)
);

CREATE TABLE `estoque`(
    `estoque_id` int not null auto_increment primary key,
    `produto_id` int,
    constraint `fk_produto`
        foreign key (`produto_id`)
        references `produtos`(`produto_id`),
    `quantidade` int
);

insert into enderecos (logradouro,numero,cidade,estado,cep,complemento) values
('Rua das Andorinhas',125,'S??o Paulo','SP','05056003',''),
('Avenida 14 de julho',134,'S??o Paulo','SP','45689956',''),
('Pra??a Marqu??s de Galinhal',17,'Campinas','SP','08027567','Apto.23'),
('Rodovia Castelo Preto',4134,'S??o Paulo','SP','09154783','Em frente ?? Leroy Merlin'),
('Alameda Marechal Bispo Presidente Carlos XI',134,'S??o Paulo','SP','410056837','Ao lado do MC Donalds'),
('Avenida Dr. Estranho',598,'Campinas','SP','6580456',''),
('Rua 4 de junho',4,'Rio de Janeiro','RJ','4487256','Na esquina'),
('Avenida 123',1062,'S??o Paulo','SP','8467248883','apto. 123'),
('Avenida Parcial',79,'S??o Paulo','SP','108389100',''),
('Rua Imparcial',81,'Rio de Janeiro','RJ','7774307','Ao lado do bar do Z??');

select * from enderecos;

insert into clientes ( nome, sobrenome, endereco_id) values 
('Jo??o', 'da Silva', '1'),
('Pedro', 'Antunes', '2'),
('Josimar', 'Ferreira', '3'),
('Alexandre', 'Barbosa', '4'),
('Fernando', 'Fonseca', '5'),
('Mariana', 'Gomes', '6'),
('Neide', 'Rocha', '7'),
('Th??o', 'Rosa', '8'),
('Daniela', 'Dos Santos', '9'),
('Ant??nio', 'Azevedo', '10');

insert into animais (tipo, nome, porte, raca, cliente_id) values 
('cachorro', 'Nina', 'pequeno', 'shitzu',1), 
('gato', 'Snow', 'pequeno', 'persa',2), 
('cachorro', 'Roger', 'pequeno', 'poodle',3),
('cachorro', 'Jaime', 'pequeno', 'SRD',4),
('cachorro', 'Zico', 'grande', 'SRD',5),
('gato', 'Joel', 'pequeno', 'siames',6),
('gato', 'Boris', 'pequeno', 'exotico',7),
('cachorro', 'Sofia', 'grande', 'Golden retriever',8),
('cachorro', 'Rex', 'grande', 'Husky siberiano',9),
('cachorro', 'Beethoven', 'medio', 'buldogue',10),
('cachorro', 'Barbie', 'pequeno', 'poodle',10);

select * from animais;

insert into fornecedores (nome, cnpj, representante, telefone, endereco_id) values
('Canil Fam??lia Feliz','8290499092','Carlinhos','38369697',1),
('Canil da Muriel Bagge','9945527827','Zezinho','4839469',2),
('Shamppo sem ard??ncia','766839004','Vitinho','53698860',3),
('Distribuidor ra????es LTDA','19837703484','Antoninho','6836969',4),
('Distribuidor alimentos animais SA','63784901193','Thiaguinho','6896569',5),
('Cobasi','18176367940','Marquinhos','12829969',6),
('Pets','616738822881','Huguinho','3546969',7),
('Tarante Distribuidora','0287462784','Philippinho','3837769',8),
('Farmaceutica de animais LTDA','9588390502','Antoninho','6336968',9),
('Maniras LTDA','47279402884','Matheusinho','08376950',10);

insert into produtos (nome,preco,categoria) values
('Ra????o Premier - 12kg', 234.90, 'Cachorros'),
('Ra????o Royal Canin Max - 15kg', 391.59, 'Cachorros'),
('Ra????o Royal Canin Premium - 1kg', 68.19, 'Gatos'),
('Ra????o Nutribetta - 12g', 10.55, 'Peixe'),
('Petisco Pedigree Dentastix', 23.39, 'Cachorros'),
('Areia para gatos - 12kg', 37.99, 'Gatos'),
('Antipulgas Simparic 20 mg - c??es 5,1 a 10 kg', 95.50, 'Cachorros'),
('Arranhador Cansei de Ser Gato', 279.99, 'Gatos'),
('Gaiola Bragan??a Criadeira', 473.32, 'Passaros'),
('Banho e tosa', 60.90, 'Servi??os'),
('Veterin??ria', 120.00, 'Servi??os'),
('Ra????o Origens Premium - 1kg', 52.90, 'Cachorros');

select * from produtos;

insert into estoque ( produto_id, quantidade) values 
('1', '32'),
('2', '27'),
('3', '41'),
('4', '35'),
('5', '40'),
('6', '30'),
('7', '22'),
('8', '43'),
('9', '21'),
('10', '8');

select * from estoque;

-- Exclusao de dados e updates:

delete from animais where animal_id = 11;
delete from produtos where produto_id in (12,13,14,15,16,17,18,19,20,21,22,23);

update enderecos set cep = '13100436' where endereco_id = 5;
update enderecos set cep = '13986469' where endereco_id = 6;
update enderecos set cep = '46843901' where endereco_id = 7;
update enderecos set cep = '86159045' where endereco_id = 8;
update enderecos set cep = '60742167' where endereco_id = 9;

-- Inserindo coluna:
ALTER TABLE produtos
ADD descricao_produto VARCHAR(300) NULL;

-- View estoque descritivo:
create view estoqueDescritivo as
select e.estoque_id, p.nome as 'Nome do Produto', p.descricao_produto as 'Descri????o do Produto', p.preco as "Pre??o Unit??rio", e.quantidade as 'Quantidade', quantidade*preco as 'Valor em estoque'
from estoque e
inner join produtos p on e.produto_id = p.produto_id;

-- Criar Procedure:
DELIMITER $$
create procedure sp_registroEndereco_Cliente (in endereco_id int)
begin
select c.nome as 'Nome_Cliente', CONCAT(e.logradouro,', ',e.numero) as 'Endere??o_Cliente'
from clientes c
inner join enderecos e on c.endereco_id = e.endereco_id
where c.endereco_id = endereco_id;
end $$
DELIMITER ;

call sp_registroEndereco_Cliente (1);



