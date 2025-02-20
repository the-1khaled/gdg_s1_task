CREATE DATABASE RetailStoreDB;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;



CREATE TABLE customers 
(
CustomerID INT IDENTITY(1,1) PRIMARY KEY,
FirstName CHAR(100),
LastName  CHAR(100),
Email VARCHAR(100),
RegistrationDate DATE
)

CREATE TABLE products
(
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName CHAR(100), 
Category CHAR(100), 
Price INT, 
StockQuantity INT
)

CREATE TABLE Orders
( 
OrderID INT IDENTITY(1,1) PRIMARY KEY, 
CustomerID INT,
FOREIGN KEY(CustomerID) REFERENCES customers(CustomerID), 
ProductID INT,
FOREIGN KEY (ProductID) REFERENCES products(ProductID),
OrderDate DATE, 
Quantity INT
)
INSERT INTO Customers(FirstName,LastName,Email,RegistrationDate)
 VALUES('Khaled','Mohamed','kahled@gmail.com','2022/4/15');
 INSERT INTO Customers(FirstName,LastName,Email,RegistrationDate)
 VALUES('mohamed','khaled','mo@gmail.com','2022/7/12');
 INSERT INTO Customers(FirstName,LastName,Email,RegistrationDate)
 VALUES('abdo','ahmed','3abood@gmail.com','2022/5/27');
 INSERT INTO Customers(FirstName,LastName,Email,RegistrationDate)
 VALUES('magdy','aref','kahled@gmail.com','2022/3/8');
 INSERT INTO Customers(FirstName,LastName,Email,RegistrationDate)
 VALUES('ali','omar','ellol@gmail.com','2022/12/9');
 
 INSERT INTO products(ProductName, Category, Price, StockQuantity)
 VALUES('shirt','clothes',140,15);
 INSERT INTO products(ProductName, Category, Price, StockQuantity)
 VALUES('jeans','clothes',150,18);
 INSERT INTO products(ProductName, Category, Price, StockQuantity)
 VALUES('TV','electronics',1400,8);
 INSERT INTO products(ProductName, Category, Price, StockQuantity)
 VALUES('macbook','electronics',2500,32);
 INSERT INTO products(ProductName, Category, Price, StockQuantity)
 VALUES('chair','furniture',200,60);

 INSERT INTO Orders(CustomerID,ProductID,OrderDate,Quantity)
 VALUES(1,1,'2023/12/2', 5);
 
 INSERT INTO Orders(CustomerID,ProductID,OrderDate,Quantity)
 VALUES(2,3,'2022/2/2', 8);
 
 INSERT INTO Orders(CustomerID,ProductID,OrderDate,Quantity)
 VALUES(4,4,'2023/10/8', 7);
 
 INSERT INTO Orders(CustomerID,ProductID,OrderDate,Quantity)
 VALUES(3,2,'2023/11/3',19);
 
 INSERT INTO Orders(CustomerID,ProductID,OrderDate,Quantity)
 VALUES(5,4,'2023/7/5',25);

 SELECT * FROM Orders;
 select * from customers;
 SELECT * FROM products;

 SELECT* FROM customers
 WHERE RegistrationDate>'2022-3-8'

SELECT TOP 3 * FROM products
ORDER BY Price DESC ;