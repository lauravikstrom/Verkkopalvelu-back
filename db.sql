/* TIETOKANNAN LUOMINEN */
CREATE DATABASE projektitietokanta;

USE projektitietokanta;

/* TUOTERYHMÄ */
CREATE TABLE category (
id int primary key auto_increment,
name varchar(50) not null
);
insert into category(name) value ('Piirrustukset');
insert into category(name) value ('Maalaukset');
insert into category(name) value ('Valokuvat');
insert into category(name) value ('Illustrointi');
insert into category(name) value ('Tarvikkeet');

CREATE TABLE product (
id int primary key auto_increment, 
name varchar(100) not null,
price double (10,2) not null,
image varchar(50),
category_id int not null,
index category_id(category_id),
foreign key (category_id) references category(id)
on delete restrict
);

INSERT INTO product (name, price,image,category_id) VALUES ('Kedon kukkia',22,'Piirustus1.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kasvien lehdet',25,'Piirustus2.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Joutsen kuutamossa',24,'Piirustus3.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kukkakimppu',23,'Piirustus4.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirrostiikeri',24,'Piirustus5.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Sydämelliset kissat',23,'Piirustus6.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Luonnon kosketus',22,'Piirustus7.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Lintu',27,'Piirustus8.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Papukaija',27,'Piirustus9.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Flamingo',29,'Piirustus10.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Mustavalkoiset kedon kukat',12,'Piirustus11.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Voikukat',25,'Piirustus12.jpg',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Mustavalkoiset linnut oksalla',24,'Piirustus13.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirrosvuohi',16,'Piirustus14.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroslehmä',27,'Piirustus15.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroskissa',28,'Piirustus16.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroskoira',26,'Piirustus17.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroshevonen',16,'Piirustus18.png',1) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirroslammas',26,'Piirustus19.png',1) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus1',24,'Maalaus1.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus2',24,'Maalaus2.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus3',24,'Maalaus3.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus4',24,'Maalaus4.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus5',24,'Maalaus5.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus6',24,'Maalaus6.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus7',24,'Maalaus7.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus8',24,'Maalaus8.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus9',24,'Maalaus9.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus10',24,'Maalaus10.png',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus11',24,'Maalaus11.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus12',24,'Maalaus12.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus13',24,'Maalaus13.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus14',24,'Maalaus14.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus15',24,'Maalaus15.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus16',24,'Maalaus16.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus17',24,'Maalaus17.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus18',24,'Maalaus18.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus19',24,'Maalaus19.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus20',24,'Maalaus20.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus21',24,'Maalaus21.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus22',24,'Maalaus22.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus23',24,'Maalaus23.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus24',24,'Maalaus24.jpg',2) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalaus25',24,'Maalaus25.jpg',2) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva1',24,'Valokuva1.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva2',24,'Valokuva2.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva3',24,'Valokuva3.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva4',24,'Valokuva4.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva5',24,'Valokuva5.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva6',24,'Valokuva6.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva7',24,'Valokuva7.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva8',24,'Valokuva8.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva9',24,'Valokuva9.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva10',24,'Valokuva10.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva11',24,'Valokuva11.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva12',24,'Valokuva12.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva13',24,'Valokuva13.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva14',24,'Valokuva14.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva15',24,'Valokuva15.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva16',24,'Valokuva16.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva17',24,'Valokuva17.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva18',24,'Valokuva18.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva19',24,'Valokuva19.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva20',24,'Valokuva20.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva21',24,'Valokuva21.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva22',24,'Valokuva22.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva23',24,'Valokuva23.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva24',24,'Valokuva24.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva25',24,'Valokuva25.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva26',24,'Valokuva26.jpg',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva27',25,'Valokuva27.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva28',22,'Valokuva28.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva29',31,'Valokuva29.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva30',23,'Valokuva30.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva31',16,'Valokuva31.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva32',26,'Valokuva32.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva33',26,'Valokuva33.png',3) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valokuva34',12,'Valokuva34.png',3) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi1',24,'Illustrointi1.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi2',24,'Illustrointi2.jpg',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi3',24,'Illustrointi3.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi4',24,'Illustrointi4.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi5',24,'Illustrointi5.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi6',24,'Illustrointi6.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi7',24,'Illustrointi7.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi8',24,'Illustrointi8.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi9',24,'Illustrointi9.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi10',24,'Illustrointi10.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi11',24,'Illustrointi11.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi12',24,'Illustrointi12.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi13',24,'Illustrointi13.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi14',24,'Illustrointi14.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi15',24,'Illustrointi15.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi16',24,'Illustrointi16.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi17',24,'Illustrointi17.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi18',24,'Illustrointi18.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi19',24,'Illustrointi19.jpg',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi20',24,'Illustrointi20.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi21',24,'Illustrointi21.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi22',26,'Illustrointi22.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi23',16,'Illustrointi23.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi24',26,'Illustrointi24.png',4) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Illustrointi25',26,'Illustrointi25.png',4) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet1',24,'Tarvikkeet1.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet2',24,'Tarvikkeet2.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet3',24,'Tarvikkeet3.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet4',24,'Tarvikkeet4.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet5',24,'Tarvikkeet5.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet6',24,'Tarvikkeet6.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet7',24,'Tarvikkeet7.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet8',24,'Tarvikkeet8.jpg',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Tarvikkeet9',24,'Tarvikkeet9.jpg',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Musta puukehys',14,'Tarvikkeet_Kehys1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Vaalea puukehys',14,'Tarvikkeet_Kehys2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Koristeltu kehys',17,'Tarvikkeet_Kehys3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Valkoinen puukehys',14,'Tarvikkeet_Kehys4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Krominvärinen metallikehys',15,'Tarvikkeet_Kehys5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Ruskea puukehys',15,'Tarvikkeet_Kehys6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puukehys',14,'Tarvikkeet_Kehys7.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Kuulakärkikynä sinisellä musteella',4,'Tarvikkeet_Kyna1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Musta piirustustussi',4,'Tarvikkeet_Kyna2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuulakärkikynä mustalla musteella',4,'Tarvikkeet_Kyna3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Musta kynä',4,'Tarvikkeet_Kyna4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalligrafiakynä ja kultainen muste',5,'Tarvikkeet_Kyna5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit 10 kpl',5,'Tarvikkeet_Kyna6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärikynäsetti',5,'Tarvikkeet_Kyna7.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Yliviivaustussi',5,'Tarvikkeet_Kyna8.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuitukärkikynät',5,'Tarvikkeet_Kyna9.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kalligrafiatussi',5,'Tarvikkeet_Kyna10.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 15 cm',16,'Tarvikkeet_Maalaustarvike1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 20 cm',17,'Tarvikkeet_Maalaustarvike2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallinukke, 25 cm',18,'Tarvikkeet_Maalaustarvike3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puinen mallikäsi',16,'Tarvikkeet_Maalaustarvike4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalauspohja telineellä',12,'Tarvikkeet_Maalaustarvike5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suojakäsineet',7,'Tarvikkeet_Maalaustarvike6.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kasvomaski',9,'Tarvikkeet_Maalaustarvike7.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Hengityssuojain',12,'Tarvikkeet_Maalaustarvike8.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suojalasit',14,'Tarvikkeet_Maalaustarvike9.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suuri maalipaletti',12,'Tarvikkeet_Maalaustarvike10.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Maalipaletti',9,'Tarvikkeet_Maalaustarvike11.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Valkoinen A4-paperi',11,'Tarvikkeet_Paperi1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Ruskea A4-paperi',13,'Tarvikkeet_Paperi2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarelipaperi A3',12,'Tarvikkeet_Paperi3.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Akryylivärit',11,'Tarvikkeet_Maali1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarellinapit',13,'Tarvikkeet_Maali2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Akvarelliväri',12,'Tarvikkeet_Maali3.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Pyöreä keinokuitusivellin',4,'Tarvikkeet_Pensseli1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Pieni keinokuitusivellin',4,'Tarvikkeet_Pensseli2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Keinokuitusivellinsetti, 15 erilaista sivellintä',5,'Tarvikkeet_Pensseli3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Suuri keinokuitusivellin',6,'Tarvikkeet_Pensseli4.png',5) ;

INSERT INTO product (name, price,image,category_id) VALUES ('Viivotin',5,'Tarvikkeet_Piirustustarvike1.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Kuviopiirtotyökalu',6,'Tarvikkeet_Piirustustarvike2.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Piirtokynäsetti suojapenaalin',7,'Tarvikkeet_Piirustustarvike3.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit suojapenaalilla',6,'Tarvikkeet_Piirustustarvike4.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Puuvärit suojakankaalla',8,'Tarvikkeet_Piirustustarvike5.png',5) ;
INSERT INTO product (name, price,image,category_id) VALUES ('Harppi',6,'Tarvikkeet_Piirustustarvike6.png',5) ;

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
id INTEGER,
CONSTRAINT tilausrivi_pk PRIMARY KEY (tilausnro, rivinro),
CONSTRAINT tilausrivi_tuote_fk FOREIGN KEY (id) 
           REFERENCES product (id)
);
