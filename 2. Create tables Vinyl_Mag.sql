create database Vinyl_Mag;
use Vinyl_Mag;

drop table if exists Artisti;
create table Artisti (
	id_artist	int identity  primary key not null,
	nume_artist	Varchar(100)
);

drop table if exists Genuri;
create table Genuri (
	id_gen	int identity primary key not null,
	nume_gen	Varchar(50)
);

drop table if exists Tip_Format;
create table Tip_Format (
	id_tip	int identity primary key not null,
	nume_tip	Varchar(50)
);

drop table if exists Furnizor;
create table Furnizor (
	id_furnizor	int identity primary key not null,
	Furnizor	Varchar(250),
	strada	Varchar(150),
	nr	Varchar(150),
	localitate	Varchar(100),
	judet	Varchar(50),
	email	Varchar(150),
	telefon	Varchar(50),

);

drop table if exists Albume;
create table Albume(
	id_album	int identity primary key not null,
	id_artist	int REFERENCES artisti(id_artist),
	id_gen	int REFERENCES genuri(id_gen),
	id_furnizor	int REFERENCES furnizor(id_furnizor),
	id_tip	int  REFERENCES tip_format(id_tip),
	titlu	Varchar(100),
	data_aparitie	date,
	in_stoc	Varchar(10),
	cantitate_stoc	int,
	pret decimal(10,2)
	);

	   
drop table if exists Clienti;
create table Clienti (
	id_client int identity primary KEY ,
	nume	Varchar(50),
	prenume	Varchar(50),
	strada	Varchar(150),
	nr	Varchar(150),
	ap	Varchar(10),
	localitate	Varchar(100),
	judet	Varchar(50),
	email	Varchar(150),
	telefon	Varchar(50)
	);


/*drop table if exists Comenzi;
create table Comenzi (
	id_comanda	int identity primary key not null,
	id_client	int REFERENCES Clienti(id_Client),
	pret_livrare	decimal(10,2)
	);
*/

drop table if exists Detalii_Comenzi;
create table Detalii_Comenzi (
	id_detalii	int identity primary key not null,
	id_comanda	int,
	id_album	int references Albume(id_album),
	id_client int references clienti(id_client),
	data_comanda date,
	cantitate	int
);

