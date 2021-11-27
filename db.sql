/* TIETOKANNAN LUOMINEN */
CREATE DATABASE projektitietokanta;

USE projektitietokanta;

/* TUOTERYHMÄ */
CREATE TABLE category (
id INT PRIMARY KEY auto_increment,
NAME VARCHAR(50) NOT NULL
);

INSERT INTO category(name) VALUE ('Piirrustukset');
INSERT INTO category(name) VALUE ('Maalaukset');
INSERT INTO category(name) VALUE ('Valokuvat');
INSERT INTO category(name) VALUE ('Illustrointi');
INSERT INTO category(name) VALUE ('Tarvikkeet');
INSERT INTO category(name) VALUE ('Suositut');
INSERT INTO category(name) VALUE ('Tarjoukset');

CREATE TABLE product (
id INT PRIMARY KEY auto_increment, 
NAME VARCHAR(100) NOT NULL,
price double (10,2) NOT NULL,
IMAGE VARCHAR(50),
category_id INT NOT NULL,
INDEX category_id(category_id),
FOREIGN KEY (category_id) REFERENCES category(id)
ON DELETE restrict
);

INSERT INTO product (name, price,category_id) VALUES ('Piirustus1',22,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus2',25,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus3',24,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus4',23,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus5',24,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus6',23,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus7',22,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus8',27,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus9',27,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus10',29,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus11',12,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus12',25,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus13',24,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus14',16,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus15',27,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus16',28,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus17',26,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus18',16,1) ;
INSERT INTO product (name, price,category_id) VALUES ('Piirustus19',26,1) ;

INSERT INTO product (name, price,category_id) VALUES ('Maalaus1',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus2',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus3',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus4',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus5',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus6',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus7',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus8',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus9',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus10',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus11',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus12',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus13',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus14',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus15',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus16',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus17',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus18',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus19',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus20',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus21',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus22',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus23',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus24',24,2) ;
INSERT INTO product (name, price,category_id) VALUES ('Maalaus25',24,2) ;

INSERT INTO product (name, price,category_id) VALUES ('Valokuva1',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva2',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva3',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva4',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva5',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva6',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva7',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva8',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva9',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva10',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva11',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva12',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva13',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva14',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva15',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva16',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva17',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva18',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva19',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva20',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva21',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva22',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva23',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva24',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva25',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva26',24,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva27',25,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva28',22,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva29',31,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva30',23,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva31',16,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva32',26,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva33',26,3) ;
INSERT INTO product (name, price,category_id) VALUES ('Valokuva34',12,3) ;

INSERT INTO product (name, price,category_id) VALUES ('Illustrointi1',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi2',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi3',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi4',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi5',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi6',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi7',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi8',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi9',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi10',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi11',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi12',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi13',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi14',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi15',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi16',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi17',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi18',24.,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi19',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi20',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi21',24,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi22',26,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi23',16,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi24',26,4) ;
INSERT INTO product (name, price,category_id) VALUES ('Illustrointi25',26,4) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet1',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet2',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet3',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet4',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet5',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet6',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet7',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet8',24,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet9',24,5) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys1',14,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys2',14,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys3',17,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys4',14,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys5',15,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys6',15,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kehys7',14,5) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna1',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna2',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna3',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna4',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna5',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna6',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna7',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna8',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna9',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Kyna10',5,5) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike1',16,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike2',16,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike3',16,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike4',16,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike5',12,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike6',7,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike7',9,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike8',12,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike9',14,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike10',9,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maalaustarvike11',12,5) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maali1',11,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maali2',13,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Maali3',12.00,5) ;

INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Pensseli1',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Pensseli2',4,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Pensseli3',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('Tarvikkeet_Pensseli4',6,5) ;

INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike1',5,5) ;
INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike2',6,5) ;
INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike3',7,5) ;
INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike4',6,5) ;
INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike5',8,5) ;
INSERT INTO product (name, price,category_id) VALUES ('_Piirustustarvike6',6,5) ;

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
id INTEGER, 
kpl INTEGER,
CONSTRAINT tilausrivi_pk PRIMARY KEY (tilausnro, rivinro),
CONSTRAINT tilausrivi_tuote_fk FOREIGN KEY (id) 
           REFERENCES product (id)
);
