drop database if exists exercise;
use excercise;
create database exercise;


create table nha_cc (
	ma_ncc int primary key,
	ten_ncc varchar(50),
	dia_chi varchar(50),
	sdt varchar (50)
);

create table sdt(
	sdt varchar(10),
    ma_ncc int , 
    foreign key (ma_ncc) references nha_cc(ma_ncc)
);

create table don_dh(
	so_dh int primary key , 
	ngay_dh datetime,
	ma_ncc int,
	foreign key (ma_ncc) references nha_cc(ma_ncc)
);

create table vat_tu (
	ma_vat_tu int  primary key ,
	ten_vat_tu varchar(50)
);

create table chi_tiet_don_dat_hang(
	ma_vat_tu int,
	so_dh int,
	primary key(ma_vat_tu,so_dh),
    foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
    foreign key (so_dh) references don_dh(so_dh)
);

create table phieu_xuat(
	so_px int primary key, 
	ngay_xuat varchar (50) 
);

create table chi_tiet_phieu_xuat(
	dg_xuat double,
	Sl_xuat int,
	so_px int not null ,
	ma_vat_tu int not null,
	primary key (so_px,ma_vat_tu),
	foreign key (so_px) references phieu_xuat(so_px),
	foreign key (ma_vat_tu)references vat_tu(ma_vat_tu)
);

create table phieu_nhap (
	so_pn int primary key,
	ngay_nhap datetime
);

create table chi_tiet_phieu_nhap(
	dg_nhap double, 
	so_luong_nhap int, 
	so_pn int,
	ma_vat_tu int, 
	primary key (so_pn, ma_vat_tu),
	foreign key (so_pn) references vat_tu(ma_vat_tu),
	foreign key(so_pn) references phieu_nhap(so_pn)
);








