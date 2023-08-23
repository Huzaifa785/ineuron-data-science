create database ecom_facebook;

use ecom_facebook;

create table product_info (
	product_id int,
    product_name varchar(20)
);

insert into product_info values 
(1001, "Blog"),
(1002, "Youtube"),
(1003, "Education");

select * from product_id;

create table product_info_likes (
	user_id int,
	product_id int,
    liked_date varchar(20)
);

insert into product_info_likes values 
(1, 1001, "19/08/2023"),
(2, 1003, "18/08/2023");

select * from product_info_likes;

-- find ids of the product with 0 likes
select product_info.product_id from product_info 
left join product_info_likes on
product_info.product_id = product_info_likes.product_id
where product_info_likes.product_id is null;