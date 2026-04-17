create database shop_manager;
use shop_manager;

create table products(
	productsId varchar(5) primary key,
    productsName varchar(50) not null,
    productsSize varchar(5),
    price decimal(10) not null
);


insert into products (productsId, productsName, productsSize, price)
values
	('P01','Áo sơ mi trắng','L','250000'),
    ('P02','Quần Jean xanh','M','450000'),
    ('P03','Áo thun Basic','XL','150000'),
    ('P04','Áo hoodie', NULL,'-200000');
    
update products
set price = price * 1.1;

update products
set price = 400000
where productsId = 'P02';

delete from products
where productsId = 'P03';


select * from products;
select productsName, productsSize from products;
select * from products where price > 300000 