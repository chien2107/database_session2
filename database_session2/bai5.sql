create database user_management;
use user_management;
create table user (
    user_id int auto_increment primary key,
    name varchar(50) not null,
    age int check (age > 0) not null,
    email varchar(50) not null unique
);
create table digital_wallet(
    wallet_id int auto_increment primary key,
    balance decimal(18,2) not null default 0 check (balance >= 0),
    createat datetime default (current_timestamp()),
    user_id int,
    foreign key (user_id) references user(user_id)
);
create table transactions (
    transaction_id int auto_increment primary key,
    transaction_type enum('deposit', 'withdrawal', 'payment') not null,
    amount decimal(15,2) not null check (amount > 0),
    transaction_status enum('pending', 'successful', 'unsuccessful') not null,
    createat datetime default (current_timestamp()),
    wallet_id int,
    foreign key (wallet_id) references digital_wallet(wallet_id)
);