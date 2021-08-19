/* create database Use SQL*/
create database AddressBookSystem;
use AddressBookSystem;

/* create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes */
create table addressBook
(firstName varchar(50), lastName varchar(50), address varchar(50), city varchar(20), state varchar(20), zipCode int, phoneNum bigint, email varchar(50));

/* insert new Contacts to Address Book*/
insert into addressBook values
("Afroz", "Basha", "Kapu", "Jammalamadugu", "Andhra Pradesh", 516434, 9533182605, "iafrozbasha@gmail.com"),
("Sameer", "Basha", "Kapu", "Jammalamadugu", "Goa", 500254, 9533182605, "Smeer@gmail.com"),
("Rohit", "Basha", "Kapu", "Jammalamadugu", "Maharasta", 205554, 9533182605, "Rohit@gmail.com");

/* edit existing contact person using their name */
update addressBook set address = 'Proddatur'
where (firstName = 'Afroz');

/* delete a person using person's name */
delete from addressBook where firstName = "Afroz";

/* Retrieve Person belonging to a City or State from the Address Book */
select * from addressBook
where state = "Andhra Pradesh" and city = "Jammalamadugu";

/* understand the size of address book by City and State - Here size indicates the count */
select count(city or state) from addressBook
where state = "Andhra Pradesh" and city = "Jammalamadugu";

/* retrieve entries sorted alphabetically by Person’s name for a given city */
select * from addressBook
where city = "Jammalamadugu" order by firstName;

/* identify each Address Book with name and Type. - Here the type could Family, Friends, Profession, etc - Alter Address Book to add name and type */
alter table addressBook add relation varchar(50) after lastName;
alter table addressBook add name varchar(50) after lastName;

/* add person to both Friend and Family */
update addressBook set name = "Shaik", relation = "Friend" where firstName = "Afroz";
update addressBook set name = "Basha", relation = "Family" where firstName = "Afroz";

/* get number of contact persons i.e. count by type */
select count(relation) from addressBook;

