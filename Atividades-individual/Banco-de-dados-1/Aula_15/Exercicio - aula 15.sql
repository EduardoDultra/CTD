select f.FaturaId, format((f.Transporte),2) as TotalFatura, c.Pais
from faturas f
inner join clientes c
on f.ClienteID = c.ClienteID
group by c.Pais;

select contato, upper(titulo) as Titulo
from clientes c
inner join faturas f on c.ClienteID = f.ClienteID
where f.datafatura < "1996-12-31"
order by contato;

select right (concat('00000000', f.faturaID),8) as faturaID,
date_format(f.dataFatura, '%d-%m-%Y') as dataFatura, c.cidade, f.CidadeEnvio
from Faturas f
inner join Clientes c
on f.ClienteID = c.ClienteID
where c.Cidade <> f.CidadeEnvio and c.Pais = 'uk'; 
