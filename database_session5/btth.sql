create database order_manager;
use order_manager;

create table orders(
    order_id int primary key,
    total_amount int,
    note text,
    user_id int,
    status varchar(10)
);

insert into orders (order_id, total_amount, note, user_id, status) values
(1, 2500000, 'đơn gấp giao ngay', 101, 'completed'),
(2, 4500000, 'giao gấp buổi tối', 102, 'pending'),
(3, 3000000, 'đơn hệ thống', null, 'completed'),
(4, 3500000, 'đơn gấp', 103, 'cancelled'),
(5, 6000000, 'đơn gấp', 104, 'completed'),
(6, 3000000, 'bình thường', 105, 'completed'),
(7, 4800000, 'auto gen', null, 'pending'),
(8, 4000000, 'auto', null, 'cancelled'),
(9, 2000000, 'gấp nhẹ', 106, 'completed'),
(10, 5000000, 'gấp vip', 107, 'pending'),
(11, 1500000, 'auto', null, 'completed'),
(12, 3500000, 'không ưu tiên', 108, 'pending'),
(13, 2200000, 'gấp xử lý nhanh', 109, 'completed'),
(14, 4100000, 'gấp trong ngày', 110, 'pending'),
(15, 3900000, 'auto system', null, 'completed'),
(16, 2700000, 'đơn gấp nội bộ', 111, 'completed'),
(17, 5200000, 'gấp cao cấp', 112, 'pending'),
(18, 3300000, 'auto created', null, 'pending'),
(19, 2900000, 'bình thường', 113, 'completed'),
(20, 4700000, 'gấp ngay lập tức', 114, 'completed');

select order_id, total_amount, note, user_id, status,
    case 
        when total_amount > 4000000 then 'nguy hiểm'
        else 'bình thường'
    end as alert_level
from orders
where total_amount between 2000000 and 5000000
and status <> 'cancelled'
and (note like '%gấp%' or user_id is null)
order by total_amount desc
limit 20;