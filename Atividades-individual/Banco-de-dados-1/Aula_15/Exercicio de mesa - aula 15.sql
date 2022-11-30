select c.Empresa, count(f.FaturaID), format((f.Transporte),2)
from Faturas f
inner join correios c
on c.CorreioID = f.FormaEnvio
group by c.Empresa

select concat('Sr/a ', Contato) as Nome, concat('n', Titulo) as Titulo, concat('End', 