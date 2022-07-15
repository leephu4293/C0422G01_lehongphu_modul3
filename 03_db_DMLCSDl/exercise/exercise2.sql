drop database if exists quan_ly_ban_hang;

create database quan_ly_ban_hang;
use quan_ly_ban_hang;


create table customer (
	c_id int primary key, 
	c_name varchar (50),
	c_age int 
 );
 
 create table `order`(
	 o_id int primary key, 
	 c_id int, 
	 o_date datetime,
	 o_total_price double,
     foreign key (c_id) references customer(c_id)
 ); 
 
 create table product(
	p_id int primary key, 
	p_name varchar(50),
	p_price double
);

create table order_detail(
	o_id int, 
	p_id int, 
	od_qty int,
	primary key (o_id,p_id),
    foreign key (o_id) references `order`(o_id),
    foreign key (p_id) references product(p_id)
);

insert into customer (c_id,c_name,c_age)
values 
	(1,"Minh Quan",10),
	(2,"Ngoc Oanh",20),
	(3,"Hong Ha",50);

 insert into  `order` (o_id, c_id, o_date, o_total_price)
 values 
	 ('1', '1', '2006/03/21', Null),
	 ('2', '2', '2006/03/13', Null), 
	 ('3', '1', '2006/03/16', Null);
 
 insert into product (p_id, p_name, p_price) 
 values 
	 ('1', 'May Giat', '3'),
	 (2, 'Tu Lanh', '5'),
	 (3, 'Dieu Hoa', '7'),
	 (4, 'Quat', '1'),
	 (5, 'Bep Dien', '2');
 
 insert into order_detail (o_id, p_id, od_qty)
 values
	 ('1', '1', '3'),
	 (1, '3', '7'),
	 (1, '4', '2'),
	 (2, '1', '1'),
	 (3, '1', '8'),
	 (2, '5', '4'),
	 (2, '3', '3');

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_id, c_id, o_total_price
from `order` ;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c_name, p_name 
from customer c 
join `order` o  
on c.c_id = o.o_id
join order_detail order_total
on order_total.o_id = o.o_id
join product p 
on order_total.p_id = p.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c_name
from customer c 
left join `order` o 
on c.c_id= o.c_id
where o_id is  null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)

select o.o_id, o_date, sum(od_qty*p_price)
from  `order` o 
join order_detail  order_detal
on o.o_id = order_detal.o_id
join product p 
on order_detal.p_id = p.p_id
group by  o.o_id;


 

