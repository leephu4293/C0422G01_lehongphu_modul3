drop database if exists QuanLySinhVien;
create database QuanLySinhVien;
use QuanLySinhvien;


create table Class (
	class_id int primary key auto_increment,
	class_name varchar(60) not null ,
	start_date datetime not null,
	statuss bit  
 );
 
 create table student(
	 student_id int primary key auto_increment,
	 student_name varbinary (30) not null ,
	 address varchar(50),
	 phone varchar (20),
	 statuss bit,
	 class_id int not null
 );
 
 create table `subject`(
 );
