select count(id) as QTDFatura, data_fatura from faturas
group by data_fatura;

/* maior quantidade: 405 -- data 2010-02-12*/

select * from faturas;

select pais_cobranca as País, sum(id) as Quantidade, max(valor_total) as Máximo, sum(valor_total) as Soma,
format(avg(valor_total),2) as Média
from faturas
group by pais_cobranca;

/* 
Qual o valor total de faturas do Canadá? 11.963
Qual a média das faturas do Brasil? R$ 5,43
Quantas faturas a Argentina possui? 1.729
Qual o maior valor da fatura dos Estados Unidos? R$ 23,86
*/


/*
3 - Utilizando a tabela Clientes, liste os países que possuem mais de 4 clientes. Responda:
a) Quantos países foram listados? 4
b) Quantos clientes possuem os Estados Unidos? 13
c) Quais são os países que possuem 5 clientes? Brazil
*/

select count(id) as Clientes, pais from clientes group by pais
having clientes > 4;

/*
4 - Liste os clientes do Brasil que moram no estado de São Paulo.

R: Luís - eduardo - Alexandre
*/

select * from clientes;
 
select nome, pais, estado from clientes
where estado like "SP";

/*
5 - Na tabela cancoes, liste a quantidade de canções, o preço unitário e o valor total das canções por id do gênero. Responda:
a) Qual gênero possui mais canções?
b) Qual o valor total das canções de gênero 4?
c) Qual o valor unitário das canções?
d) Qual o valor unitário das canções do gênero 21?
*/
/*
Grupo 1

André Paulo
Letícia Leite
Eduardo 
Brenner 
*/