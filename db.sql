/* TIETOKANNAN LUOMINEN */
CREATE DATABASE projektitietokanta;

USE projektitietokanta;

/* TUOTERYHMÄ */



CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(30),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

INSERT INTO tuoteryhma VALUES (11,'Piirrustukset');
INSERT INTO tuoteryhma VALUES (12,'Maalaukset');
INSERT INTO tuoteryhma VALUES (13,'Valokuvat');
INSERT INTO tuoteryhma VALUES (14,'Illustrointi');
INSERT INTO tuoteryhma VALUES (15,'Tarvikkeet');
INSERT INTO tuoteryhma VALUES (16,'Suositut');
INSERT INTO tuoteryhma VALUES (17,'Tarjoukset');

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
INSERT INTO tuote VALUES (5,'Elefantti',22.00,7.40,13) ;
INSERT INTO tuote VALUES (6,'Elefantti2',31.00,24.85,13) ;
INSERT INTO tuote VALUES (7,'Elefantti3',23.00,NULL,13) ;
INSERT INTO tuote VALUES (8,'Metsä',16.00,3.80,14) ;
INSERT INTO tuote VALUES (9,'Vuohi',16.00,3.80,11) ;
INSERT INTO tuote VALUES (10,'Hevonen',16.00,3.80,11) ;
INSERT INTO tuote VALUES (11,'Hevonen2',16.00,3.80,13) ;
INSERT INTO tuote VALUES (12,'Järvi',26.00,5.80,14) ;
INSERT INTO tuote VALUES (13,'Vuoret',26.00,5.80,14) ;
INSERT INTO tuote VALUES (14,'Pöllö',26.00,5.80,13) ;
INSERT INTO tuote VALUES (15,'Lammas',26.00,5.80,11) ;
INSERT INTO tuote VALUES (16,'Joutsen',26.00,5.80,13) ;
INSERT INTO tuote VALUES (17,'Puut',26.00,5.80,14) ;
INSERT INTO tuote VALUES (18,'Kilpikonna',12.00,5.80,13) ;
INSERT INTO tuote VALUES (19,'Piirustus1',22.00,5.80,11) ;
INSERT INTO tuote VALUES (20,'Piirustus2',25.00,5.80,11) ;
INSERT INTO tuote VALUES (21,'Piirustus3',24.00,5.80,11) ;
INSERT INTO tuote VALUES (22,'Piirustus4',23.00,5.80,11) ;
INSERT INTO tuote VALUES (23,'Piirustus5',24.00,5.80,11) ;
INSERT INTO tuote VALUES (24,'Piirustus6',23.00,5.80,11) ;
INSERT INTO tuote VALUES (25,'Piirustus7',22.00,5.80,11) ;
INSERT INTO tuote VALUES (26,'Piirustus8',27.00,5.80,11) ;
INSERT INTO tuote VALUES (27,'Piirustus9',27.00,5.80,11) ;
INSERT INTO tuote VALUES (28,'Piirustus10',29.00,5.80,11) ;
INSERT INTO tuote VALUES (29,'Piirustus11',12.00,5.80,11) ;
INSERT INTO tuote VALUES (30,'Piirustus12',25.00,5.80,11) ;
INSERT INTO tuote VALUES (31,'Piirustus13',24.00,5.80,11) ;
INSERT INTO tuote VALUES (32,'Valokuva1',24.00,5.80,13) ;
INSERT INTO tuote VALUES (33,'Valokuva2',24.00,5.80,13) ;
INSERT INTO tuote VALUES (34,'Valokuva3',24.00,5.80,13) ;
INSERT INTO tuote VALUES (35,'Valokuva4',24.00,5.80,13) ;
INSERT INTO tuote VALUES (36,'Valokuva5',24.00,5.80,13) ;
INSERT INTO tuote VALUES (37,'Valokuva6',24.00,5.80,13) ;
INSERT INTO tuote VALUES (38,'Valokuva7',24.00,5.80,13) ;
INSERT INTO tuote VALUES (39,'Valokuva8',24.00,5.80,13) ;
INSERT INTO tuote VALUES (40,'Valokuva9',24.00,5.80,13) ;
INSERT INTO tuote VALUES (41,'Valokuva10',24.00,5.80,13) ;
INSERT INTO tuote VALUES (42,'Valokuva11',24.00,5.80,13) ;
INSERT INTO tuote VALUES (43,'Valokuva12',24.00,5.80,13) ;
INSERT INTO tuote VALUES (44,'Valokuva13',24.00,5.80,13) ;
INSERT INTO tuote VALUES (45,'Valokuva14',24.00,5.80,13) ;
INSERT INTO tuote VALUES (46,'Valokuva15',24.00,5.80,13) ;
INSERT INTO tuote VALUES (47,'Valokuva16',24.00,5.80,13) ;
INSERT INTO tuote VALUES (48,'Valokuva17',24.00,5.80,13) ;
INSERT INTO tuote VALUES (49,'Valokuva18',24.00,5.80,13) ;
INSERT INTO tuote VALUES (50,'Valokuva19',24.00,5.80,13) ;
INSERT INTO tuote VALUES (51,'Valokuva20',24.00,5.80,13) ;
INSERT INTO tuote VALUES (52,'Valokuva21',24.00,5.80,13) ;
INSERT INTO tuote VALUES (53,'Valokuva22',24.00,5.80,13) ;
INSERT INTO tuote VALUES (54,'Valokuva23',24.00,5.80,13) ;
INSERT INTO tuote VALUES (55,'Valokuva24',24.00,5.80,13) ;
INSERT INTO tuote VALUES (56,'Valokuva25',24.00,5.80,13) ;
INSERT INTO tuote VALUES (57,'Valokuva26',24.00,5.80,13) ;
INSERT INTO tuote VALUES (58,'Tarvikkeet1',24.00,5.80,15) ;
INSERT INTO tuote VALUES (59,'Tarvikkeet2',24.00,5.80,15) ;
INSERT INTO tuote VALUES (60,'Tarvikkeet3',24.00,5.80,15) ;
INSERT INTO tuote VALUES (61,'Tarvikkeet4',24.00,5.80,15) ;
INSERT INTO tuote VALUES (62,'Tarvikkeet5',24.00,5.80,15) ;
INSERT INTO tuote VALUES (63,'Tarvikkeet6',24.00,5.80,15) ;
INSERT INTO tuote VALUES (64,'Tarvikkeet7',24.00,5.80,15) ;
INSERT INTO tuote VALUES (65,'Tarvikkeet8',24.00,5.80,15) ;
INSERT INTO tuote VALUES (66,'Tarvikkeet9',24.00,5.80,15) ;
INSERT INTO tuote VALUES (67,'Illustrointi1',24.00,5.80,14) ;
INSERT INTO tuote VALUES (68,'Illustrointi2',24.00,5.80,14) ;
INSERT INTO tuote VALUES (69,'Illustrointi3',24.00,5.80,14) ;
INSERT INTO tuote VALUES (70,'Illustrointi4',24.00,5.80,14) ;
INSERT INTO tuote VALUES (71,'Illustrointi5',24.00,5.80,14) ;
INSERT INTO tuote VALUES (72,'Illustrointi6',24.00,5.80,14) ;
INSERT INTO tuote VALUES (73,'Illustrointi7',24.00,5.80,14) ;
INSERT INTO tuote VALUES (74,'Illustrointi8',24.00,5.80,14) ;
INSERT INTO tuote VALUES (75,'Illustrointi9',24.00,5.80,14) ;
INSERT INTO tuote VALUES (76,'Illustrointi10',24.00,5.80,14) ;
INSERT INTO tuote VALUES (77,'Illustrointi11',24.00,5.80,14) ;
INSERT INTO tuote VALUES (78,'Illustrointi12',24.00,5.80,14) ;
INSERT INTO tuote VALUES (79,'Illustrointi13',24.00,5.80,14) ;
INSERT INTO tuote VALUES (80,'Illustrointi14',24.00,5.80,14) ;
INSERT INTO tuote VALUES (81,'Illustrointi15',24.00,5.80,14) ;
INSERT INTO tuote VALUES (82,'Illustrointi16',24.00,5.80,14) ;
INSERT INTO tuote VALUES (83,'Illustrointi17',24.00,5.80,14) ;
INSERT INTO tuote VALUES (84,'Illustrointi18',24.00,5.80,14) ;
INSERT INTO tuote VALUES (85,'Illustrointi19',24.00,5.80,14) ;
INSERT INTO tuote VALUES (86,'Illustrointi20',24.00,5.80,14) ;
INSERT INTO tuote VALUES (87,'Illustrointi21',24.00,5.80,14) ;
INSERT INTO tuote VALUES (88,'Maalaus1',24.00,5.80,12) ;
INSERT INTO tuote VALUES (89,'Maalaus2',24.00,5.80,12) ;
INSERT INTO tuote VALUES (90,'Maalaus3',24.00,5.80,12) ;
INSERT INTO tuote VALUES (91,'Maalaus4',24.00,5.80,12) ;
INSERT INTO tuote VALUES (92,'Maalaus5',24.00,5.80,12) ;
INSERT INTO tuote VALUES (93,'Maalaus6',24.00,5.80,12) ;
INSERT INTO tuote VALUES (94,'Maalaus7',24.00,5.80,12) ;
INSERT INTO tuote VALUES (95,'Maalaus8',24.00,5.80,12) ;
INSERT INTO tuote VALUES (96,'Maalaus9',24.00,5.80,12) ;
INSERT INTO tuote VALUES (97,'Maalaus10',24.00,5.80,12) ;
INSERT INTO tuote VALUES (98,'Maalaus11',24.00,5.80,12) ;
INSERT INTO tuote VALUES (99,'Maalaus12',24.00,5.80,12) ;
INSERT INTO tuote VALUES (100,'Maalaus13',24.00,5.80,12) ;
INSERT INTO tuote VALUES (101,'Maalaus14',24.00,5.80,12) ;
INSERT INTO tuote VALUES (102,'Maalaus15',24.00,5.80,12) ;
INSERT INTO tuote VALUES (103,'Maalaus16',24.00,5.80,12) ;
INSERT INTO tuote VALUES (104,'Maalaus17',24.00,5.80,12) ;
INSERT INTO tuote VALUES (105,'Maalaus18',24.00,5.80,12) ;
INSERT INTO tuote VALUES (106,'Maalaus19',24.00,5.80,12) ;
INSERT INTO tuote VALUES (107,'Maalaus20',24.00,5.80,12) ;
INSERT INTO tuote VALUES (108,'Maalaus21',24.00,5.80,12) ;
INSERT INTO tuote VALUES (109,'Maalaus22',24.00,5.80,12) ;
INSERT INTO tuote VALUES (110,'Maalaus23',24.00,5.80,12) ;
INSERT INTO tuote VALUES (111,'Maalaus24',24.00,5.80,12) ;
INSERT INTO tuote VALUES (112,'Maalaus25',24.00,5.80,12) ;



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
