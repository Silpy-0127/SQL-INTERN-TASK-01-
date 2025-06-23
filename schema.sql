#Step 1: Create the database
CREATE DATABASE LocalMarketDB;

#Use DB
USE LocalMarketDB;

#Step 2: Sellers Table
CREATE TABLE Sellers (
    SellerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    ShopName VARCHAR(100),
    Address TEXT
);

#Step 3: Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address TEXT
);

#Step 4: Categories Table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) UNIQUE
);

#Step 5: Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    SellerID INT,
    CategoryID INT,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10,2),
    FOREIGN KEY (SellerID) REFERENCES Sellers(SellerID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

#Step 6: Inventory Table
CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    QuantityAvailable INT,
    LastRestocked DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

#Step 7: Orders Table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

#Step 8: OrderItems Table
CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

#Step 9: Payments Table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
