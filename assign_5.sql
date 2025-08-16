CREATE TABLE Products(
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Catergory VARCHAR(50),
Price DECIMAL(10,2),
Stock INT
);

 INSERT INTO Products (ProductID, ProductName, Catergory, Price, Stock) VALUES
   (1, 'Laptop',	'Eectronics', 800.00,  50),
   (2, 'Smartphone','Electronics', 600.00,  30),
   (3, 'Desk Chair','Furniture',   120.00, 100),
   (4, 'Table', 	'Furniture',   200.00,  20),
   (5, 'Notebook',  'Stationery',	5.00, 500),
   (6, 'Pen',   	'Stationery',	2.00,1000);   
   
--a) Electronics & Furniture: Retrieve products in categories Electronics or Furniture.
 select ProductName from  Products
 where Catergory in ('Electronics' , 'Furniture')
 
--b) Price Range: Find products with price between 100 and 800.
select ProductName from Products 
where Price between 100 and 800;

-- c) Stock Range: List products whose stock is between 50 and 500.
select ProductName from Products 
where Stock between 50 and 500;

--d) Name Contains 'Pen': Select products with 'Pen' anywhere in the name.
select  ProductName from Products 
where ProductName like '%Pen%';

--e) Name Starts With 'S': Retrieve products whose names start with 'S'.
select  ProductName from Products 
where ProductName like 'S%';

--f) Category & Price: Products in Stationery or Furniture and price 100–300.
select  ProductName from Products 
where Catergory in ('Stationery ' , 'Furniture') AND price between 100 and 300;
--g) Low-Price 'o': Products priced 1–10 and name contains 'o'.
select  ProductName from Products
where Price between 1 and 10 and ProducTName like '%o%';

 