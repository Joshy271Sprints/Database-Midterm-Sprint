Create Table Customers (
Customer_Id INT PRIMARY KEY,
Customer_Name VARCHAR(100),
Customer_Email VARCHAR(100)
); 

Create Table Products (
Product_Id INT PRIMARY KEY,
Product_Name VARCHAR(100),
Product_Price DECIMAL(10, 2)
);

Create Table Orders (
Order_Id SERIAL PRIMARY KEY,
Customer_Id INT REFERENCES Customers(Customer_Id),
Product_Id INT REFERENCES Products(Product_Id)
);