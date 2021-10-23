DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS firestations;

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

commit;