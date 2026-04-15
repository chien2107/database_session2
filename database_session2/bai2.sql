create database customer_management;
use customer_management;
create table customers (
    CustomerID int primary key,
    FullName varchar(100),
    Email varchar(100), 
    Age int             
);
alter table customers 
change Email Email varchar(100) not null;
alter table customers 
change Age Age int check(Age > 0);