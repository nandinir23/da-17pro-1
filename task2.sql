create table Doctor(
Doctor_ID int PRIMARY key,
name varchar,
department varchar
)
select * from Doctor
insert into Doctor(Doctor_ID,name,department) values(1,'Dr.Nandini','Gynaecologists')
insert into Doctor(Doctor_ID,name,department) values(2,'Dr.Jadhav','Physiotherapy')
insert into Doctor(Doctor_ID,name,department) values(3,'Dr.Gote','Surgeon')

create table Patient(
Patient_ID int PRIMARY key,
name varchar,
disease varchar,
Doctor_ID int,
FOREIGN key (Doctor_ID) REFERENCES Doctor(Doctor_ID) 
)
select * from Patient
insert into Patient(Patient_ID,name,disease,Doctor_ID) values(4,'shruti','typhoid','1')
insert into Patient(Patient_ID,name,disease,Doctor_ID) values(5,'shreya','diarrhoea','2')
insert into Patient(Patient_ID,name,disease,Doctor_ID) values(6,'ashwin','malaria','3')

create table ElectionParties(
PartyID int PRIMARY key,
PartyName varchar,
Leader varchar
)
select * from ElectionParties
insert into ElectionParties(PartyID,PartyName,Leader) values(1,'BJP','Modi')
insert into ElectionParties(PartyID,PartyName,Leader) values(2,'Congress','Naik')
insert into ElectionParties(PartyID,PartyName,Leader) values(3,'Green Party','Howie Hawkins')

create table Supporters(
supporterID int PRIMARY key,
name varchar,
age int,
PartyID int,
FOREIGN key (PartyID) REFERENCES ElectionParties(PartyID)
)
select * from Supporters
insert into Supporters(supporterID,name,age,PartyID) values(4,'naina','23','1')
insert into Supporters(supporterID,name,age,PartyID) values(5,'john','21','2')
insert into Supporters(supporterID,name,age,PartyID) values(6,'jaya','22','3')

create table courts(
court_id int PRIMARY key,
name varchar,
location varchar
)
select * from courts
insert into courts(court_id,name,location) values(1,'high court','delhi')
insert into courts(court_id,name,location) values(2,'supreme court','kolkata')
insert into courts(court_id,name,location) values(3,'family court','mumbai')

create table advocate(
advocate_id int PRIMARY key,
name varchar,
specialization varchar,
court_id int,
FOREIGN key (court_id) REFERENCES courts(court_id)
)
select * from advocate
insert into advocate(advocate_id,name,specialization,court_id) values(4,'anushka','family law','1')
insert into advocate(advocate_id,name,specialization,court_id) values(5,'suhani','criminal law','2')
insert into advocate(advocate_id,name,specialization,court_id) values(6,'khushi','civil law','3')

create table institute(
institue_id int PRIMARY key,
name varchar,
location varchar
)
select * from institute
insert into institute(institue_id,name,location) values(1,'GWCET','nagpur')
insert into institute(institue_id,name,location) values(2,'Sipna','amravati')
insert into institute(institue_id,name,location) values(3,'Fergusson','pune')

create table events(
event_id int PRIMARY key,
name varchar,
description varchar,
institue_id int,
FOREIGN key(institue_id) REFERENCES institute(institue_id)
) 
select * from events
insert into events(event_id,name,description,institue_id) values(4,'annual function','dance','1')
insert into events(event_id,name,description,institue_id) values(5,'quiz competition','questioning','2')
insert into events(event_id,name,description,institue_id) values(6,'drawing competition','drawing','3')

create table girlsPG(
PG_id int PRIMARY key,
name varchar,
location varchar
)
select * from girlsPG
insert into girlsPG(PG_id,name,location) values(1,'kamla nehru','sakkardara')
insert into girlsPG(PG_id,name,location) values(2,'lokmanya','pune')
insert into girlsPG(PG_id,name,location) values(3,'priyadarshini','nagpur')

create table girls(
girls_id int PRIMARY key,
name varchar,
PG_id int,
FOREIGN key(PG_id) REFERENCES girlsPG(PG_id)
)
select * from girls
insert into girls(girls_id,name,PG_id) values(4,'priya','1')
insert into girls(girls_id,name,PG_id) values(5,'shreya','2')
insert into girls(girls_id,name,PG_id) values(6,'jaya','3')





create table researchers(
researcher_id int PRIMARY key,
name varchar
)
select * from researchers
insert into researchers(researcher_id,name) values(1,'alice')
insert into researchers(researcher_id,name) values(2,'john')
insert into researchers(researcher_id,name) values(3,'charlie')

create table project(
project_id int PRIMARY key,
name varchar,
researcher_id int,
FOREIGN key(researcher_id) REFERENCES researchers(researcher_id)
)
select * from project
insert into project(project_id,name,researcher_id) values(4,'AI for healthcare','1')
insert into project(project_id,name,researcher_id) values(5,'AI for checkup','2')
insert into project(project_id,name,researcher_id) values(6,'AI for study','3')

create table publication(
publication_id int PRIMARY key,
title varchar,
project_id int,
FOREIGN key(project_id) REFERENCES project(project_id)
)
select * from publication
insert into publication(publication_id,title,project_id) values(7,'AI in diagnostics','4')
insert into publication(publication_id,title,project_id) values(8,'deep learning in nlp','5')
insert into publication(publication_id,title,project_id) values(9,'vision system for robotics','6')


create table manager(
manager_id int PRIMARY key,
name varchar
)
select * from manager
insert into manager(manager_id,name) values(1,'shruti')
insert into manager(manager_id,name) values(2,'astha')

create table account(
account_id int PRIMARY key,
name varchar,
balance int,
manager_id int,
FOREIGN key(manager_id) REFERENCES manager(manager_id)
)
select * from account
insert into account(account_id,name,balance,manager_id) values(3,'savings','1000','1')
insert into account(account_id,name,balance,manager_id) values(4,'checking','1080','2')

create table transaction(
transaction_id int PRIMARY key,
amount int,
account_id int,
FOREIGN key(account_id) REFERENCES account(account_id)
)
select * from transaction
insert into transaction(transaction_id,amount,account_id) values(5,'1010','3')
insert into transaction(transaction_id,amount,account_id) values(6,'1020','4')

create table library(
library_id int PRIMARY key,
name varchar,
location varchar
)
select * from library
insert into library(library_id,name,location) values(1,'yashwant library','nagpur')
insert into library(library_id,name,location) values(2,'subhshnati library','nagpur')

create table book(
book_id int PRIMARY key,
name varchar,
library_id int,
FOREIGN key(library_id) REFERENCES library(library_id)
)
select * from book
insert into book(book_id,name,library_id) values(3,'girl in the room','1')
insert into book(book_id,name,library_id) values(4,'the secret','2')

create table member(
member_id int PRIMARY key,
name varchar,
book_id int,
FOREIGN key(book_id) REFERENCES book(book_id)
)
select * from member
insert into member(member_id,name,book_id) values(5,'vanshika','3')
insert into member(member_id,name,book_id) values(6,'naina','4')




create table continents(
continent_id int PRIMARY key,
name varchar
)
select * from continents
insert into continents(continent_id,name) values(1,'asia')
insert into continents(continent_id,name) values(2,'africa')

create table regions(
region_id int PRIMARY key,
name varchar,
continent_id int,
FOREIGN key(continent_id) REFERENCES continents(continent_id)
)
select * from regions
insert into regions(region_id,name,continent_id) values(3,'south asia','1')
insert into regions(region_id,name,continent_id) values(4,'south africa','2')

create table country(
country_id int PRIMARY key,
name varchar,
region_id int,
FOREIGN key(region_id) REFERENCES regions(region_id)
)
select * from country
insert into country(country_id,name,region_id) values(5,'bahrain','3')
insert into country(country_id,name,region_id) values(6,'benin','4')

create table city(
city_id int PRIMARY key,
name varchar,
country_id int,
FOREIGN key(country_id) REFERENCES country(country_id)
)
select * from city
insert into city(city_id,name,country_id) values(7,'tokyo','5')
insert into city(city_id,name,country_id) values(8,'lagos','6')

create table language(
language_id int PRIMARY key,
name varchar,
city_id int,
FOREIGN key(city_id) REFERENCES city(city_id)
)
select * from language
insert into language(language_id,name,city_id) values(9,'arabic','7')
insert into language(language_id,name,city_id) values(10,'french','8')