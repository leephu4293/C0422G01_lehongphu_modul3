drop database if exists QuanLyDiemThi;
create database QuanLyDiemThi;
use QuanLyDiemThi;

create table HocSinh (
	MaHS varchar(20) primary key, 
	TenHs varchar(50),
	NgaySinh datetime,
	lop varchar (20),
	Gt varchar(20)
);

create table MonHoc(
	MaMH varchar(20) primary key,
	TenMH varchar(50)
 );
 
 create table BangDiem(
	 MaHS varchar (20),
	 MaMH varchar (20),
	 DiemThi int, 
	 NgayKT datetime,
	 primary key(MaHs,MaMH),
	 foreign key(MaHS) references HocSinh(MaHS),
	 foreign key(MaMH) references MonHoc(MaMH)
 );
 
 create table GiaoVien (
	 MaGv varchar(20) primary key,
	 TenGv varchar(20),
	 SDT varchar (10)
 );

 alter table MonHoc add MaGV varchar(20);
 alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
