select *  from customers;
select * from orders;
select * from order_items;
select * from products;

select * from customers where city = 'New York';

select * from orders
order by order_date desc;

select product_name, category, 
avg(price) over(partition by category) as avg_price
from products;


select name, order_id, total_amount , order_date
from customers as c
inner join orders as o
on c.customer_id = o.customer_id;

select * from products
where price > (select avg(price) from products);

select sum(price) from products;

CREATE VIEW HighValueCustomers AS
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING total_spent > 1000;

Show index from customers;

