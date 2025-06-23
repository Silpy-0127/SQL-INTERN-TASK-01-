# SQL Internship Task 1 - Local Market E-Commerce Database

# Domain
Local Market E-Commerce Platform for Small Sellers

# Description
This database system supports an online platform where small/local sellers can list products, manage inventory, accept customer orders, and process payments. It focuses on efficient sales, stock, and order tracking.

# Entities
- Sellers
- Customers
- Products
- Categories
- Inventory
- Orders
- OrderItems
- Payments

# Relationships
- Each seller can list multiple products
- Each product belongs to one category
- Each product has one inventory record
- Each customer can place multiple orders
- Each order contains multiple products via OrderItems
- Each order is associated with one payment

# How to Run
1. Open MySQL Workbench or any MySQL-compatible tool
2. Run the `ecommerce_schema.sql` file to create the database and tables
3. View the ER diagram for visual structure and relationships

# Files
- `ecommerce_schema.sql` – SQL script to create the database schema
- `ER_Diagram.png` – ER diagram for the database

# Application Used
- MySQL Workbench
