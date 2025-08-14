CREATE TABLE customers(
cust_id SERIAL PRIMARY KEY ,
cust_name VARCHAR(20) NOT NULL
);

CREATE TABLE orders(
ord_id SERIAL PRIMARY KEY ,
ord_date DATE DEFAULT CURRENT_DATE ,
price NUMERIC NOT NULL,
cust_id INT ,
FOREIGN KEY(cust_id) REFERENCES customers(cust_id)       	 

);

INSERT INTO customers (cust_name)
VALUES  ('Raju'), ('Sham'), ('Paul'), ('Alex');


INSERT INTO orders (ord_date, cust_id, price)
VALUES 
    ('2024-01-01', 1, 250.00),  
    ('2024-01-15', 1, 300.00),  
    ('2024-02-01', 2, 150.00),
    ('2024-03-01', 3, 450.00),
    ('2024-04-04', 2, 550.00);  
	
--cross join , join all the rows and column of both the table
SELECT * FROM customers
CROSS JOIN orders;

--INNER JOIN 
SELECT * FROM customers AS c
INNER JOIN orders AS o
ON c.cust_id = o.cust_id;

SELECT cust_name , COUNT(o.ord_id) as no_of_orders, SUM(o.price) as
total_amount
FROM customers as c
INNER JOIN orders as o 
ON c.cust_id = o.cust_id
GROUP BY cust_name;

--LEFT JOIN
SELECT * from customers as c
LEFT JOIN orders as o
ON c.cust_id = o.cust_id;

--RIGHT JOIN
SELECT * from customers as c
RIGHT JOIN orders as o
ON c.cust_id = o.cust_id;
	