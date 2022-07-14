drop database if exists my_database; 
create database my_database;
use my_database;

CREATE TABLE class (
    id INT,
    name_student VARCHAR(50)
);

alter table class add primary key (id); 
create table teacher (
	id int, 
	nameTeacher varchar(50),
	age int, 
	country varchar(50)
);

insert into class (id,name_student) 
values (1,"long"),(2,"huy");

insert into student (name_student,age,country) 
values ("long",25,"hue"),("huy",24,"aasdd"),("duc",22,"qweqweqe");