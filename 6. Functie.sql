---functie care calculeaza totalul pt fiecare comanda (total albume+pret transport)
CREATE FUNCTION dbo.Test_functie (@id int)
RETURNS table AS
return(
		select suma_comanda+
		(case when suma_comanda >= 200 then 0
		else 16 end ) pret_total
		from (
		select dc.id_comanda, sum(a.pret*dc.cantitate) as suma_comanda
		from detalii_comenzi dc
		join albume a on dc.id_album = a.id_album 
		group by dc.id_comanda
		) t
		where id_comanda = @id
)


SELECT 
    * 
FROM 
    dbo.Test_functie(3)


