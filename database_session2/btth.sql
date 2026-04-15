create database library_management;
use library_management;
create table book (
   book_id char(5) primary key,
   book_name varchar(200) not null,
   quantity int check (quantity >= 0),
   price decimal(10,2) default 5000
);
alter table book 
add column ngaynhap date;
create table borrow_books (
    borrow_id int auto_increment primary key,
    borrow_date datetime default (current_timestamp()),
    book_id char(5) not null,
    foreign key (book_id) references book(book_id)
);