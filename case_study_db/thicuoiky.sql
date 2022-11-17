DROP DATABASE IF EXISTS quan_ly_khoa_hoc;
CREATE DATABASE quan_ly_khoa_hoc ;

USE quan_ly_khoa_hoc ;
create table khoa_hoc(
	ma_khoa_hoc varchar (50) not null primary key,
	ten_khoa_hoc varchar(50),
	thoi_gian_hoc int,
	hoc_phi int,
    id_khoa_hoc int,
     FOREIGN KEY (id_khoa_hoc) REFERENCES nguoi_dung(id_khoa_hoc) on delete cascade
);
create table modul(
	ma_modul varchar(50) not null primary key,
	ten_modul varchar(50),
	ma_khoa_hoc varchar(50),
	 FOREIGN KEY (ma_khoa_hoc) REFERENCES khoa_hoc(ma_khoa_hoc) on delete cascade
);

create table quan_ly_bai_hoc(
	id_bai int not null primary key,
	tieu_de varchar(50),
	loai_bai varchar(50),
	do_kho varchar(50),
    id_do_kho int,
	link_bai_hoc varchar(50),
    ma_modul varchar(50),
    FOREIGN KEY (ma_modul) REFERENCES modul(ma_modul) on delete cascade
);

create table do_kho(
  id_do_kho int,
	do_kho int primary key,
    FOREIGN KEY (do_kho) REFERENCES quan_ly_bai_hoc(id_bai) on delete cascade
);

create table nguoi_dung(
   id_khoa_hoc int not null primary key,
	ho_ten varchar(50),
	ngay_sinh date,
	email varchar(50),
	dia_chi varchar(50),
	so_dien_thoai varchar(50),
    id_nguoi_dung int 
);


insert into nguoi_dung (id_khoa_hoc,ho_ten,ngay_sinh,email,dia_chi,so_dien_thoai,id_nguoi_dung)
values ('1','Nguyen van A','1993-12-12','a@gmail','da nang','0905789456','1'),
('2','Nguyen van b','1933-10-12','a@gmail','quang nam','0905789456','2'),
('3','Nguyen van c','1893-12-12','a@gmail','hue','0905789456','3'),
('4','Nguyen van d','1983-12-12','a@gmail','hue','0905789456','4'),
('5','Nguyen van e','1983-12-12','c@gmail','hue','0905789456','5'),
('6','Nguyen van f','1983-12-12','d@gmail','hue','0905789456','6'),
('7','Nguyen van g','1983-12-12','e@gmail','hue','0905789456','7'),
('8','Nguyen van h','1983-12-12','f@gmail','hue','0905789456','8'),
('9','Nguyen van j','1973-12-12','g@gmail','hue','0905789456','9'),
('10','Nguyen van k','1999-12-12','a@gmail','hue','0905789456','10');

insert into khoa_hoc (ma_khoa_hoc,ten_khoa_hoc,thoi_gian_hoc,hoc_phi,id_khoa_hoc)
value  ('java','web back end','3','40000',1),
        ('php','web back end','3','30000','2'),
         ('ruby','web back end','4','50000','3'),
          ('c','web back end','6','60000','4'),
          ('cc','web back end','6','60000','5'),
          ('tester','web back end','6','60000','6'),
          ('backend','web back end','6','60000','7'),
          ('fontend',' font end','6','60000','8'),
          ('dev','web back end','6','60000','9'),
          ('tutor','web back end','6','60000','10');
          
          
 insert into modul (ma_modul,ten_modul,ma_khoa_hoc)
 values    ('1','modul 1', 'java'),
    ('2','modul 2', 'php'),
 ('3','modul 3', 'ruby'),
     ('4','modul 4', 'tester'),
     ('5','modul 5', 'backend'),
  ('6','modul 6', 'dev');
  
  insert into quan_ly_bai_hoc (id_bai,tieu_de,loai_bai,do_kho,id_do_kho,link_bai_hoc,ma_modul)
 values ('1','hellojava','bai giang','1','1','sdadqweqw.com','1'),
  ('2','hellobackend','bai giang','2','2','sdadqweqw.com','5'),
 ('3','hellophp','bai giang','3','3','sdadqweqw.com','2'),
  ('4','helloruby','bai giang','4','4','sdadqweqw.com','3'),
  ('5','hellotester','bai giang','4','4','sdadqweqw.com','');
  
   insert into do_kho (id_do_kho,do_kho)
 values('1','1'),
 ('2','2'),
 ('3','3'),
 ('4','4');
          
          select * from quan_ly_bai_hoc
           
