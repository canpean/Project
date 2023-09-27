insert into artisti values ('Jamiroquai');
insert into artisti values ('Archive');
insert into artisti values ('Baba Dochia');
insert into artisti values ('Depeche Mode');
insert into artisti values ('Metallica');
insert into artisti values ('Madonna');
insert into artisti values ('Arctic Monkeys');
insert into artisti values ('Editors');
insert into artisti values ('Partizan');
insert into artisti values ('Varna');
insert into artisti values ('Travka');
insert into artisti values ('Wax Tailor');
insert into artisti values ('Etienne de Crecy');
insert into artisti values ('Sebastien Tellier');
insert into artisti values ('Soulwax');
insert into artisti values ('Genesis');
insert into artisti values ('Taylor Swift');
insert into artisti values ('Abba');
insert into artisti values ('Gorrillaz');
insert into artisti values ('Justice');
insert into artisti values ('Daft Punk');
insert into artisti values ('Jean Michel Jare');

select * from artisti;

insert into genuri values ('electronic');
insert into genuri values ('indie');
insert into genuri values ('alternative');
insert into genuri values ('rock');
insert into genuri values ('pop');
insert into genuri values ('Nu-disco');
insert into genuri values ('trip hop');
insert into genuri values ('hip hop');

select * from genuri;

insert into tip_format values ('vinyl');
insert into tip_format values ('cd');
insert into tip_format values ('caseta');

select * from tip_format;

insert into furnizor values ('Melomusic', 'Depoului', '245', 'Bucuresti', 'IF', 'comtact@melomusic.ro', '0732890908');
insert into furnizor values ('Cirkular', 'Emil Isaac', '3	', 'Cluj-Napoca' , 'CJ', 'contact@cirkular.ro', '0741051000');
insert into furnizor values ('Emagic', 'Teilor', '69', 'Bucuresti', '	IF	', 'comenzi@emagic.ro', '0722987988');

select * from furnizor;


insert into albume values (4	,	1,	2,	1, 'Music for the Masses', '1987-02-19', 'da',	24	,	100	); --an-luna-zi
insert into albume values (3	,	1,	1,	2, 'Am Spate', '2022-01-09', 'da',	3	,	90	);
insert into albume values (1	,	6,	2,	1, 'A Funk Odyssey', '2001-03-09', 'da',	10	,	149.9	);
insert into albume values (2	,	7,	2,	1, 'Controlling Crowds', '2009-03-30', 'da',	4	,	180	);
insert into albume values (21	,	1,	2,	1, 'Discovery', '2001-03-12', 'da',	5	,	200	);
insert into albume values (20	,	1,	3,	1, 'Woman', '2016-11-18', 'da',	8	,	249.9	);
insert into albume values (19	,	3,	3,	1, 'Demon Days', '2005-11-05', 'da',	7	,	110	);
insert into albume values (18	,	5,	1,	3, 'Waterloo', '1974-04-03', 'da',	5	,	70	);
insert into albume values (17	,	5,	2,	1, 'Midnights', '2022-10-21', 'da',	33	,	169.9	);
insert into albume values (16	,	4,	1,	1, 'We can dance', '1991-11-11', 'da',	18	,	120	);
insert into albume values (15	,	1,	3,	1, 'Nite versions', '2005-09-26', 'da',	1	,	110	);
insert into albume values (14	,	1,	3,	1, 'Confection', '2013-11-11', 'da',	12	,	150	);
insert into albume values (13	,	1,	3,	1, 'Super discount 3', '2015-01-17', 'da',	31	,	150	);
insert into albume values (12	,	8,	2,	1, 'In the mood for life', '2002-09-22', 'da',	45	,	123	);
insert into albume values (11	,	3,	1,	2, 'Corabia nebunilor', '2005-08-08', 'da',	23	,	50	);
insert into albume values (10	,	4,	1,	3, 'Nu am chef azi', '1998-01-09', 'da',	20	,	60	);
insert into albume values (9	,	3,	1,	3, 'Bucuresti', '2003-08-03', 'da',	18	,	50	);
insert into albume values (8	,	2,	1,	2, 'Ebm', '2022-09-23', 'da',	11	,	110	);
insert into albume values (7	,	4,	2,	1, 'Am', '2013-01-09', 'da',	10	,	140	);
insert into albume values (6	,	5,	1,	1, 'Music', '2000-09-09', 'da',	15	,	119.9	);
insert into albume values (5	,	4,	2,	1, 'Muster of Puppets', '1986-03-03', 'da', 9,	129.9	);
insert into albume values (22	,	1,	1,	1, 'Equinox', '1978-12-15', 'da',	10,	70	);
insert into albume values (6	,	5,	3,	1, 'Madonna', '1983-06-27', 'da', 2	, 80 );
insert into albume values (10	,	4,	1,	3, 'Am sa ma intorc barbat', '2002-05-27', 'nu', 0	, 70 );

select * from albume order by id_album asc

insert into clienti values ('Costea', 'Cristian', 'Victoriei ', '47', '77', 'Baia Mare', 'Maramures', 'costeaflorin123@yahoo.com', '0722178987');
insert into clienti values ('Hanganu', 'Florina', 'Magheru ', '23', '60', 'Bucuresti', 'Ilfov', 'florinahanganu@gmail.com', '0722134512');
insert into clienti values ('Candea', 'Larisa', 'Panselutelor', '21', '69', 'Turda', 'Cluj', 'lary.cand@yahoo.com', '0723450987');
insert into clienti values ('Balaj', 'Cristian', 'Buna Ziua', '278', '13', 'Cluj-Napoca', 'Cluj', 'cristibalaj@yahoo.com', '0741051001');
insert into clienti values ('Bergel', 'Erich', 'Antim Ivireanul', '17', '5', 'Cluj-Napoca', 'Cluj', 'erich.bergel@gmail.com', '0749189032');

select * from clienti

/*insert into comenzi values (1, 16, 256);
insert into comenzi values (2, 20, 329.9);
insert into comenzi values (3, 16, 136);
insert into comenzi values (4, 20, 469.9);
insert into comenzi values (5, 16, 325.9);*/

--select * from comenzi

insert into Detalii_Comenzi values (1, 2, 1, '2022-01-10', 1);
insert into detalii_comenzi values (1, 13, 1, '2022-01-10', 1);
insert into detalii_comenzi values (2, 11, 2, '2022-08-03', 1);
insert into detalii_comenzi values (2, 23, 2, '2022-08-03', 1);
insert into detalii_comenzi values (2, 20, 2, '2022-08-03', 1);
insert into detalii_comenzi values (3, 16, 3, '2022-09-03', 2);
insert into detalii_comenzi values (4, 2, 4, '2022-07-18', 1);
insert into detalii_comenzi values (4, 3, 4, '2022-07-18', 1);
insert into detalii_comenzi values (4, 1, 4, '2022-07-18', 1);
insert into detalii_comenzi values (4, 11, 4, '2022-07-18', 1);
insert into detalii_comenzi values (5, 21, 5, '2022-08-08', 1);
insert into detalii_comenzi values (5, 8,  5, '2022-08-08', 1);
insert into detalii_comenzi values (5, 18, 5, '2022-08-08', 1);
insert into detalii_comenzi values (6, 23, 2, '2022-08-08', 1);


