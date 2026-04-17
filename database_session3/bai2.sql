create database shipper;
use shipper;
create table shippers (
	shipperid int primary key,
    shippername varchar(255),
    phone varchar(20)
);
insert into shippers (shipperid, shippername, phone)
values (1,'giao hàng nhanh', '0901234567');
insert into shippers
values (2, 'viettel post','0111111111');