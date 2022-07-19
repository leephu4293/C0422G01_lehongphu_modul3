drop database if exists demo ;
create database demo ;
use demo;

create table products (
	id int auto_increment primary key,
	products_code int  ,
	products_name varchar (30),
	product_price int, 
    product_amount int, 
	product_description varchar(50),
	product_status boolean
);

insert into products (products_code,products_name,product_price, product_amount,product_description,product_status) 
values 
	(1,'milk',5000,20,'blue',true),
	(6,'water',2000,10,null,true),
	(4,'coca',3000,40,'black',false),
	(8,'pepsi',3000,60,'whilte',true),
	(9,'wine',8000,20,null,true),
	(10,'beer',9000,80,'yellow',false);
    
    -- b3 Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
	create index i_product on products(products_code);
    create index v_product on products(products_name,product_price);
    drop index i_product on products;
    drop index v_product on products;
    explain select * 
			from products
            where product_price = 8000 and products_name = 'wine';
    -- khong co index chay 6 dong code, co index chay 1 dong code tang toc do truy van  
    -- index composite neu chi truyen 1 cot chay du 6 dong, truyen du 2 cot chi chay 1 dong
    
    -- b4 Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
    -- Tiến hành xoá view
    create view view_table as 
      select 
		  products_code,
		  products_name,
		  product_price,
		  product_status
      from products;   
      
      select * 
      from view_table;
      
      -- Tiến hành sửa đổi view 
      set sql_safe_updates = 0;
		update view_table 
		set products_name= 'huda', product_price = '6500'
		where products_name= 'beer';
		set sql_safe_updates = 1;
        
      insert into products (products_code,products_name,product_price, product_amount,product_description,product_status) 
		values (11,'heniken',8500,30,'blue',true);
        
      insert into view_table (products_code,products_name,product_price,product_status) values (14,'heniken sivler',9500,true);
      
      set sql_safe_updates = 0;
      delete from  view_table vt
      where  vt.products_name= 'heniken sivler';
      set sql_safe_updates = 1;
      
      -- b5 Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
      delimiter //
      create procedure find_product ()
      begin 
		select * from products;
      end //
      delimiter ;
      
      call find_product;
      -- Tạo store procedure thêm một sản phẩm mới
       delimiter //
      create procedure add_product (`code` int, `name` varchar(20), price int, amount int, `description` varchar(20), `status` boolean)
      begin 
		insert into products (products_code,products_name,product_price, product_amount,product_description,product_status) 
		values (`code`,`name`,price,amount,`description`,`status`);
      end //
      delimiter ;
      call add_product (19,'huda ice',6500,30,'brown',true);
      
      -- Tạo store procedure sửa thông tin sản phẩm theo id
      delimiter //
      create procedure update_product ( new_id int, `code` int, `name` varchar(20), price int, amount int, `description` varchar(20), `status` boolean)
      begin 
		update products 
        set products_code= `code`, products_name= `name`, product_price = price, product_amount = amount, product_description= `description`, product_status= `status`
        where id = new_id ;
      end //
      delimiter ;
      call update_product (1,19,'huda ice',6500,30,'brown',true);
      
      -- Tạo store procedure xoá sản phẩm theo id
      delimiter //
       create procedure delete_product ( new_id int)
       begin 
		delete from  products 
        where id = new_id ;
      end //
      delimiter ;
      call delete_product (1);
      
      