-- view care contine toate informatiile financiare necesare generarii unei facturi
-- id_comanda
-- data comanda
-- nume, prenume client
-- cost transport
-- cost produse
-- cost total 

create or alter view Detalii_financiare as 
select dc.id_comanda, 
dc.data_comanda, 
concat (c.nume,' ', c.prenume) as nume_prenume,
sum(a.pret*dc.cantitate) as pret_albume,
case when sum(a.pret*dc.cantitate) >= 200 then 0
		else 16 end as cost_transport,
sum(a.pret*dc.cantitate) + (case when sum(a.pret*dc.cantitate) >= 200 then 0
		else 16 end) as cost_total
from detalii_comenzi dc 
join albume a on dc.id_album = a.id_album
join clienti c on dc.id_client = c.id_client
group by id_comanda, data_comanda, nume, prenume;




select * from Detalii_financiare
