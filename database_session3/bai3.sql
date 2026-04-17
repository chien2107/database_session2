create database customer;
use customer;

create table customers (
    customerid int primary key auto_increment,
    fullname varchar(100),
    email varchar(100),
    city varchar(50),
    lastpurchasedate date,          
    status varchar(20),            
    gender varchar(10),
    dateofbirth date,
    points int,
    address varchar(255)
);

insert into customers (fullname, email, city, lastpurchasedate, status)
values
    ('nguyễn văn a', 'anv@gmail.com', 'hà nội', '2025-05-20', 'active'),
    ('trần thị b', 'btt@gmail.com', 'hà nội', '2026-02-10', 'active'),
    ('lê văn c', null, 'hà nội', '2025-01-15', 'active'),
    ('phạm minh d', 'dpm@gmail.com', 'hà nội', '2024-12-01', 'locked'),
    ('hoàng an e', 'eha@gmail.com', 'tp hcm', '2025-03-01', 'active');

select fullname, email 
from customers
where status = 'active' and email is not null;