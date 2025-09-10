 CREATE TABLE Products (
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(50),
   Price DECIMAL(10,2),
   QuantitySold INT,
   Category VARCHAR(50)
 );


 INSERT INTO Products (ProductID, ProductName, Price, QuantitySold, Category) VALUES
   (1, 'Laptop', 	800.00,  5,  'Electronics'),
   (2, 'Smartphone', 600.00, 10,  'Electronics'),
   (3, 'Desk Chair', 120.00, 15,  'Furniture'),
   (4, 'Table',  	200.00,  8,  'Furniture'),
   (5, 'Notebook', 	5.00, 20,  'Stationery'),
   (6, 'Pen',      	2.00, 50,  'Stationery');

select * from   Products;  

--a) Above-Average Price: Select products whose Price exceeds the average price.
SELECT productname FROM products
WHERE price >(SELECT AVG(price) FROM products);

--b) Most Expensive Product: Display the ProductName and Price of the highest-priced 
SELECT productname FROM products 
ORDER BY price DESC
LIMIT 1;

--c) Category Counts: Show the total number of products in each Category (using a subquery).
select distinct Category,(select count(*) from products p2
where p2.category = p1.category) as productcount from products p1;

-- d) Below-Average Sales: Find products with QuantitySold below the average quantity sold.
SELECT productname FROM products
WHERE  QuantitySold < (SELECT AVG( QuantitySold) FROM products);

--  e) Electronics View: Create a view for all Electronics products.
CREATE VIEW electronicview AS
SELECT * FROM products
where category = 'Electronics';

