create database users_management;
use users_management;
create table users(
    user_id int auto_increment primary key,
    username varchar(30) not null,
    age int check (age > 0) not null,
    phonenumber int not null
);
alter table users 
change phonenumber phone varchar(15) not null;