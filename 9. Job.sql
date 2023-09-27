-- step_one sterge tabela de back-up daca exista pentru a putea fi recreata
drop table if exists detalii_comenzi_backup;

---step_two: creeaza un tabel de back_up care contine toate comenzile din detalii_comenzi
--si data ultimei modificari
select d.*, getdate() as modified_date into detalii_comenzi_backup from  detalii_comenzi d;

select * from detalii_comenzi_backup
