DROP TABLE IF EXISTS firestations cascade;
DROP TABLE IF EXISTS medications cascade;
DROP TABLE IF EXISTS allergies cascade;
DROP TABLE IF EXISTS medicalrecords cascade;
DROP TABLE IF EXISTS persons cascade;

create table persons(
ID int PRIMARY KEY AUTO_INCREMENT,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
adress varchar(150) NOT NULL,
city varchar(150) NOT NULL,
zip integer(10) NOT NULL,
phone varchar(20) NOT NULL,
email varchar(150) NOT NULL
);

create table firestations(
ID int PRIMARY KEY AUTO_INCREMENT,
adress varchar(150) NOT NULL,
station integer(3) NOT NULL
);

create table medicalrecords(
ID int PRIMARY KEY AUTO_INCREMENT,
owner_id integer(10) NOT NULL,
first_name varchar(25) NOT NULL,
last_name varchar(25) NOT NULL,
birthdate varchar(25) NOT NULL,
FOREIGN KEY (owner_id)
REFERENCES persons(ID)
);

create table medications(
ID int PRIMARY KEY AUTO_INCREMENT,
medical_rec_id integer(10) NOT NULL,
med_name varchar(50) NOT NULL,
dose varchar(10) NOT NULL,
FOREIGN KEY (medical_rec_id)
REFERENCES medicalrecords(ID)
);

create table allergies(
ID int PRIMARY KEY AUTO_INCREMENT,
medical_rec_id integer(10) NOT NULL,
allergy_name varchar(50) NOT NULL,
FOREIGN KEY (medical_rec_id)
REFERENCES medicalrecords(ID)
);

insert into persons(first_name,last_name,adress, city, zip, phone, email) values('John','Boyd','1509 Culver St','Culver','97451','841-874-6512','jaboyd@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Jacob','Boyd','1509 Culver St','Culver','97451','841-874-6513','drk@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Tenley','Boyd','1509 Culver St','Culver','97451','841-874-6512','tenz@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Roger','Boyd','1509 Culver St','Culver','97451','841-874-6512','jaboyd@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Felicia','Boyd','1509 Culver St','Culver','97451','841-874-6544','jaboyd@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Jonanathan','Marrack','29 15th St','Culver','97451','841-874-6513','drk@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Tessa','Carman','834 Binoc Ave','Culver','97451','841-874-6512','tenz@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Peter','Duncan','644 Gershwin Cir','Culver','97451','841-874-6512','jaboyd@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Foster','Shepard','748 Townings Dr','Culver','97451','841-874-6544','jaboyd@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Tony','Cooper','112 Steppes Pl','Culver','97451','841-874-6874','tcoop@ymail.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Lily','Cooper','489 Manchester St','Culver','97451','841-874-9845','lily@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Sophia','Zemicks','892 Downing Ct','Culver','97451','841-874-7878','soph@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Warren','Zemicks','892 Downing Ct','Culver','97451','841-874-7512','ward@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Zach','Zemicks','892 Downing Ct','Culver','97451','841-874-7512','zarc@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Reginold','Walker','908 73rd St','Culver','97451','841-874-8547','reg@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Jamie','Peters','908 73rd St','Culver','97451','841-874-7462','jpeter@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Ron','Peters','112 Steppes Pl','Culver','97451','841-874-8888','jpeter@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Allison','Boyd','112 Steppes Pl','Culver','97451','841-874-9888','aly@imail.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Brian','Stelzer','947 E. Rose Dr','Culver','97451','841-874-7784','bstel@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Shawna','Stelzer','947 E. Rose Dr','Culver','97451','841-874-7784','ssanw@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Kendrik','Stelzer','947 E. Rose Dr','Culver','97451','841-874-7784','bstel@email.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Clive','Ferguson','748 Townings Dr','Culver','97451','841-874-6741','clivfd@ymail.com');
insert into persons(first_name,last_name,adress, city, zip, phone, email) values('Eric','Cadigan','951 LoneTree Rd','Culver','97451','841-874-7458','gramps@email.com');

insert into firestations(adress,station) values('1509 Culver St', '3');
insert into firestations(adress,station) values('29 15th St', '2');
insert into firestations(adress,station) values('834 Binoc Ave', '3');
insert into firestations(adress,station) values('644 Gershwin Cir', '1');
insert into firestations(adress,station) values('748 Townings Dr', '3');
insert into firestations(adress,station) values('112 Steppes Pl', '3');
insert into firestations(adress,station) values('489 Manchester St', '4');
insert into firestations(adress,station) values('892 Downing Ct', '2');
insert into firestations(adress,station) values('908 73rd St', '1');
insert into firestations(adress,station) values('112 Steppes Pl', '4');
insert into firestations(adress,station) values('947 E. Rose Dr', '1');
insert into firestations(adress,station) values('748 Townings Dr', '3');
insert into firestations(adress,station) values('951 LoneTree Rd', '2');

insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(1, 'John', 'Boyd', '03/06/1984');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(2, 'Jacob', 'Boyd', '03/06/1989');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(3, 'Tenley', 'Boyd', '02/18/2012');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(4, 'Roger', 'Boyd', '09/06/2017');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(5, 'Felicia', 'Boyd', '01/08/1986');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(6, 'Jonanathan', 'Marrack', '01/03/1989');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(7, 'Tessa', 'Carman', '02/18/2012');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(8, 'Peter', 'Duncan', '09/06/2000');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(9, 'Foster', 'Shepard', '01/08/1980');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(10, 'Tony', 'Cooper', '03/06/1994');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(11, 'Lily', 'Cooper', '03/06/1994');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(12, 'Sophia', 'Zemicks', '03/06/1988');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(13, 'Warren', 'Zemicks', '03/06/1985');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(14, 'Zach', 'Zemicks', '03/06/2017');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(15, 'Reginold', 'Walker', '08/30/1979');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(16, 'Jamie', 'Peters', '03/06/1982');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(17, 'Ron', 'Peters', '04/06/1965');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(18, 'Allison', 'Boyd', '03/15/1965');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(19, 'Brian', 'Stelzer', '12/06/1975');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(20, 'Shawna', 'Stelzer', '07/08/1980');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(21, 'Kendrik', 'Stelzer', '03/06/2014');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(22, 'Clive', 'Ferguson', '03/06/1994');
insert into medicalrecords(owner_id, first_name, last_name, birthdate) values(23, 'Eric', 'Cadigan', '08/06/1945');

insert into medications(medical_rec_id, med_name, dose) values(1, 'aznol', '350mg');
insert into medications(medical_rec_id, med_name, dose) values(1, 'hydrapermazol', '100mg');
insert into medications(medical_rec_id, med_name, dose) values(2, 'pharmacol', '5000mg');
insert into medications(medical_rec_id, med_name, dose) values(2, 'terazine', '10mg');
insert into medications(medical_rec_id, med_name, dose) values(2, 'noznazol', '250mg');
insert into medications(medical_rec_id, med_name, dose) values(5, 'tetracyclaz', '650mg');
insert into medications(medical_rec_id, med_name, dose) values(10, 'hydrapermazol', '300mg');
insert into medications(medical_rec_id, med_name, dose) values(10, 'dodoxadin', '30mg');
insert into medications(medical_rec_id, med_name, dose) values(12, 'aznol', '60mg');
insert into medications(medical_rec_id, med_name, dose) values(12, 'hydrapermazol', '900mg');
insert into medications(medical_rec_id, med_name, dose) values(12, 'pharmacol', '5000mg');
insert into medications(medical_rec_id, med_name, dose) values(12, 'terazine', '500mg');
insert into medications(medical_rec_id, med_name, dose) values(15, 'thradox', '700mg');
insert into medications(medical_rec_id, med_name, dose) values(18, 'aznol', '200mg');
insert into medications(medical_rec_id, med_name, dose) values(19, 'ibupurin', '200mg');
insert into medications(medical_rec_id, med_name, dose) values(19, 'hydrapermazol', '400mg');
insert into medications(medical_rec_id, med_name, dose) values(21, 'noxidian', '100mg');
insert into medications(medical_rec_id, med_name, dose) values(21, 'pharmacol', '2500mg');
insert into medications(medical_rec_id, med_name, dose) values(23, 'tradoxidine', '400mg');

insert into allergies(medical_rec_id, allergy_name) values(1, 'nillacilan');
insert into allergies(medical_rec_id, allergy_name) values(3, 'peanut');
insert into allergies(medical_rec_id, allergy_name) values(5, 'xilliathal');
insert into allergies(medical_rec_id, allergy_name) values(8, 'shellfish');
insert into allergies(medical_rec_id, allergy_name) values(10, 'shellfish');
insert into allergies(medical_rec_id, allergy_name) values(12, 'peanut');
insert into allergies(medical_rec_id, allergy_name) values(12, 'shellfish');
insert into allergies(medical_rec_id, allergy_name) values(12, 'aznol');
insert into allergies(medical_rec_id, allergy_name) values(15, 'illisoxian');
insert into allergies(medical_rec_id, allergy_name) values(18, 'nillacilan');
insert into allergies(medical_rec_id, allergy_name) values(19, 'nillacilan');
commit;
