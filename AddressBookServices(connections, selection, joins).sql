create database addressBook;
use addressBook;

create table personName(id int auto_increment primary key, firstName varchar(50), lastName varchar(50), addressId int);

insert into personName values("100", "Afroz", "Basha", "200");
insert into personName values("101", "Sameer", "Kumar", "201");
insert into personName value( "102", "Rohit", "Ram", "202");

select * from personName;

create table address(id int auto_increment primary key, city varchar(50), state varchar(50), zip int, phoneNum varchar(12), personId int);

insert into address values ("200", "JMD", "AP", 516434, "9533182605", 100);

insert into address values ("201", "BANG", "KRNT", 500254, "896548945", 101);

insert into address values ("202", "HYD", "TS", 500205, "9533888605", 102);

select * from address;
alter table address add foreign key(personId) references personName(id);
select * from addressbook.address;

select * from personName;
alter table personName add foreign key(addressId) references address(id);
select * from addressbook.personName;

create table connections (id int, relativeName varchar(50), relationName varchar(50));

insert into connections values("100", "pavan", "friend");
insert into connections values("101", "kiran", "family");
insert into connections values("102", "ravi", "friend");

select * from (personName inner join address on personName.id = address.personId)
inner join connections on connections.id = personName.id;

select * from personName right join address on personName.id = address.personId;

select * from personName left join address on personName.id = address.personId;
