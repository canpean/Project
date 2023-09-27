---trigger care impiedica introducerea in baza de date a unei comenzi care contine
-- albume care nu se afla pe stoc sau a caror stoc este mai mic decat cantitatea comandata
create or alter trigger dbo.InsertComenzi
	on dbo.detalii_comenzi
	after insert
as
set nocount on;

if exists (select 1 from inserted i join Detalii_Comenzi dc on i.id_detalii = dc.id_detalii
			join albume a on dc.id_album = a.id_album 
			where (a.cantitate_stoc = 0) or (i.cantitate > a.cantitate_stoc)
)
begin
raiserror ('nu se poate comanda, nu este pe stoc', 16,1);
rollback transaction;
return
end
go

--comanda cu numar de albume indisponibile
insert into detalii_comenzi values (7, 24, 2, '2023-01-12', 1);
-- comanda cu numar de albume mai mare decat stocul disponibil
insert into detalii_comenzi values (8, 23, 2, '2023-01-12', 4);

select * from Detalii_Comenzi;

select * from Albume where id_album in (23,24);

