use Vinyl_Mag

select * from detalii_comenzi where month(data_comanda) = '01'

---suma pt fiecare comanda
select dc.id_comanda, sum(a.pret*dc.cantitate) as suma_comanda
from detalii_comenzi dc
join albume a on dc.id_album = a.id_album 
group by dc.id_comanda

---suma comenzilor pt luna 08
select month(data_comanda) as data_comanda, sum(a.pret*dc.cantitate) as suma_comanda
from detalii_comenzi dc
join albume a on dc.id_album = a.id_album 
where month(data_comanda) = '08'
group by month(data_comanda)


---clientul cu cele mai multe comenzi
select top 1 concat(c.nume, ' ', c.prenume) as nume_client, count(distinct id_comanda) as nr_comenzi 
from detalii_comenzi dc
join clienti c on dc.id_client = c.id_client
group by concat(c.nume, ' ', c.prenume) 
order by nr_comenzi desc

---comenzi provincie vs bucuresti

select case when localitate = 'Bucuresti' then localitate else 'Provincie' end as regiune,
count(distinct id_comanda) as numar_comenzi from detalii_comenzi dc
join clienti c on dc.id_client = c.id_client 
group by case when localitate = 'Bucuresti' then localitate else 'Provincie' end;

---cel mai vechi album
select top 1 nume_artist, nume_gen, titlu, data_aparitie from albume a
join genuri g on a.id_gen = g.id_gen
join artisti ar on a.id_artist = ar.id_artist 
order by data_aparitie asc


--cel mai nou album 
select top 1 nume_artist, nume_gen, titlu, data_aparitie from albume a
join genuri g on a.id_gen = g.id_gen
join artisti ar on a.id_artist = ar.id_artist 
order by data_aparitie desc


--functie
---job
--diagramele



select * from detalii_comenzi;

