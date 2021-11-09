CREATE DATABASE testiprojekti;

USE testiprojekti;

/* TUOTERYHMÄ */

CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(30),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

INSERT INTO tuoteryhma VALUES (11,'Piirrustukset');
INSERT INTO tuoteryhma VALUES (12,'Maalaukset');
INSERT INTO tuoteryhma VALUES (13,'Valokuvat');
INSERT INTO tuoteryhma VALUES (14,'Tarvikkeet');
INSERT INTO tuoteryhma VALUES (15,'Suositut');
INSERT INTO tuoteryhma VALUES (16,'Tarjoukset');

/* TUOTE */

CREATE TABLE tuote (
tuotenro INTEGER,
tuotenimi CHAR(25) NOT NULL,
hinta DECIMAL(5,2),
kustannus DECIMAL(5,2), 
trnro SMALLINT NOT NULL,
CONSTRAINT tuote_pk PRIMARY KEY (tuotenro),
CONSTRAINT tuotenimi_un UNIQUE (tuotenimi),
CONSTRAINT tuote_ryhma_fk FOREIGN KEY (trnro) 
           REFERENCES tuoteryhma (trnro)
) ;

INSERT INTO tuote VALUES (1,'Leijona',25.00,6.00,13) ;
INSERT INTO tuote VALUES (2,'Kissa',28.00,14.50,11) ;
INSERT INTO tuote VALUES (3,'Lehmä',27.00,19.60,11) ;
INSERT INTO tuote VALUES (4,'Koira',26.00,12.30,11) ;
INSERT INTO tuote VALUES (5,'Elefantti1',22.00,7.40,13) ;
INSERT INTO tuote VALUES (6,'Elefantti2',31.00,24.85,13) ;
INSERT INTO tuote VALUES (7,'Elefantti3',23.00,NULL,13) ;
INSERT INTO tuote VALUES (8,'Metsä',16.00,3.80,12) ;
INSERT INTO tuote VALUES (9,'Vuohi',16.00,3.80,11) ;
INSERT INTO tuote VALUES (10,'Hevonen',16.00,3.80,11) ;
INSERT INTO tuote VALUES (11,'Hevonentumma',16.00,3.80,13) ;
INSERT INTO tuote VALUES (12,'Järvi',26.00,5.80,12) ;
INSERT INTO tuote VALUES (13,'Vuoret',26.00,5.80,12) ;
INSERT INTO tuote VALUES (14,'Pöllöt',26.00,5.80,13) ;
INSERT INTO tuote VALUES (15,'Lammas',26.00,5.80,11) ;
INSERT INTO tuote VALUES (16,'Joutsen',26.00,5.80,13) ;
INSERT INTO tuote VALUES (17,'Puut',26.00,5.80,12) ;
INSERT INTO tuote VALUES (18,'Kilpikonna',12.00,5.80,13) ;


/* ASIAKAS */

CREATE TABLE asiakas (
astunnus CHAR(6),
asnimi CHAR(25) NOT NULL,
postinro CHAR(5), 
postitmp CHAR(10), 
asvuosi SMALLINT,
CONSTRAINT asiakas_pk PRIMARY KEY (astunnus),
CONSTRAINT asnimi_un UNIQUE (asnimi)
) ;


/* TILAUS */

CREATE TABLE tilaus (
tilausnro INTEGER NOT NULL,
astunnus CHAR(6) NOT NULL, 
tilauspvm DATETIME NOT NULL, /* tämä muutettava käytettävän sql-tuotteen mukaan*/
tila CHAR(1),
CONSTRAINT tilaus_pk PRIMARY KEY (tilausnro),
CONSTRAINT tilaus_asiakas_fk FOREIGN KEY (astunnus) 
           REFERENCES asiakas (astunnus)
) ; 


/* TILAUSRIVI */

CREATE TABLE tilausrivi (
tilausnro INTEGER NOT NULL,
rivinro SMALLINT NOT NULL,
tuotenro INTEGER, 
kpl INTEGER,
CONSTRAINT tilausrivi_pk PRIMARY KEY (tilausnro, rivinro),
CONSTRAINT tilausrivi_tuote_fk FOREIGN KEY (tuotenro) 
           REFERENCES tuote (tuotenro)
);
