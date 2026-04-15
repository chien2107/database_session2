create database customer_management;
use customer_management;
create table customers (
    CustomerID  int primary key auto_increment,
    FullName varchar(100) not null,
    Email varchar(100) not null,
    Age int check(Age > 0)
);
create table orders (
    OrderID int primary key auto_increment,
    OrderDate date not null ,
    TotalAmount decimal(10,2) not null,
    CustomerID int not null,
   foreign key(CustomerID) references customers(CustomerID)
);