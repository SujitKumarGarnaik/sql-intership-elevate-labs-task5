use ecommercedb;

create table customer(
customer_id int auto_increment primary key,
name varchar(30),
city varchar(30));

create table orderss (
order_id int  primary key,
customer_id int,
product varchar(30),
foreign key (customer_id) references customer(customer_id)
); 


-- Insert sample customers
insert into customer (name, city) values
('John Doe', 'New York'),
('Jane Smith', 'Los Angeles'),
('Mike Johnson', 'Chicago'),
('Emily Davis', 'Houston'),
('David Wilson', 'Phoenix');

-- Insert sample orders
insert into orderss (order_id, customer_id, product) values
(101, 1, 'Laptop'),
(102, 1, 'Mouse'),
(103, 2, 'Keyboard'),
(104, 3, 'Monitor'),
(105, 5, 'Printer');


-- INNER JOIN
SELECT c.customer_id, c.name, c.city, o.order_id, o.product
FROM customer c
INNER JOIN orderss o
ON c.customer_id = o.customer_id;
    
    
-- LEFT JOIN 
SELECT c.customer_id, c.name, c.city, o.order_id, o.product
FROM customer c
LEFT JOIN orderss o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN
SELECT c.customer_id, c.name, c.city, o.order_id, o.product
FROM customer c
RIGHT JOIN orderss o
ON c.customer_id = o.customer_id;


-- FULL OUTER JOIN
SELECT c.customer_id, c.name, c.city, o.order_id, o.product
FROM customer c
LEFT JOIN orderss o
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.name, c.city, o.order_id, o.product
FROM customer c
RIGHT JOIN orderss o
ON c.customer_id = o.customer_id;


-- SELF JOIN
SELECT a.name AS Customer1, b.name AS Customer2, a.city
FROM customer a
JOIN customer b
ON a.city = b.city
AND a.customer_id <> b.customer_id;

