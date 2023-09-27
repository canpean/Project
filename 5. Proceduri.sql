
--- procedura cu parametru de intrare id_comanda care returneaza pretul transportului
CREATE PROCEDURE PretTransport 
@id_comanda int
AS
with pret_per_comanda as (
select dc.id_comanda, sum(a.pret*dc.cantitate) as suma_comanda
from detalii_comenzi dc
join albume a on dc.id_album = a.id_album 
group by dc.id_comanda
)
select id_comanda, suma_comanda, 
case when suma_comanda >= 200 then 0
else 16 end pret_transport
from pret_per_comanda
where id_comanda = @id_comanda;

exec PretTransport @id_comanda = 3