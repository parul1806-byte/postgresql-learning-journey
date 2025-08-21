 CREATE TABLE Orders (
   OrderID INT PRIMARY KEY,
   CustomerName VARCHAR(50),
   ProductCategory VARCHAR(50),
   Quantity INT,
   TotalPrice DECIMAL(10,2),
   OrderDate DATE
 );

 INSERT INTO Orders (OrderID, CustomerName, ProductCategory, Quantity, TotalPrice, OrderDate) VALUES
   (1, 'Alice',   'Electronics', 2,  1600.00, '2024-11-01'),
   (2, 'Bob', 	'Furniture',   1,   300.00, '2024-11-02'),
   (3, 'Charlie', 'Electronics', 1,   800.00, '2024-11-03'),
   (4, 'Diana',   'Stationery', 10,	50.00, '2024-11-04'),
   (5, 'Eve', 	'Electronics', 3,  2400.00, '2024-11-05'),
   (6, 'Frank',   'Stationery', 20,   100.00, '2024-11-06');
 
-- a) Total Quantity by Category: Compute total Quantity sold for each ProductCategory.
select  ProductCategory, sum(Quantity) as Total_Quantity
from Orders 
group by ProductCategory;

-- b) Categories with High Sales Volume: Find categories where total Quantity > 10.
select  ProductCategory, sum(Quantity) as Total_Quantity
from Orders
group by ProductCategory
having sum(Quantity) >10;

--c) Average Order Value by Category: Calculate average TotalPrice per ProductCategory.
select  ProductCategory,round(avg(TotalPrice),3) as AVG_PRICE
FROM Orders 
group by ProductCategory;

--d) Categories with Low Average Price: Identify categories where average TotalPrice < 1000.
select ProductCategory from
(select  ProductCategory,round(avg(TotalPrice),3)as avg_total_price
from orders group by ProductCategory) 
where avg_total_price > 1000 ;

--e) Classify Orders by Value: Add a column marking each order as 'High Value' if TotalPrice > 1000, else 'Low Value'.
select *,
     CASE 
     when TotalPrice > 1000 then 'High Value'
     else 'Low Value'
	 END  AS ValueCategory
from orders;	 
	 
	 
	 
	 


