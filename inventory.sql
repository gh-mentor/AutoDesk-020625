/*
This file contains a script of Transact SQL (T-SQL) command to interact with a database named 'Inventory'.
Requirements:
- referential integrity is enforced
Steps:
1) Check if the database 'Inventory' exists, if it does exist, drop it and create a new one.
2) Set the default database to 'Inventory'.
3) Create a 'suppliers' table. Use the following columns:
- id: integer, primary key
- name: 50 characters, not null
- address: 255 characters, nullable
- city: 50 characters, not null
- state: 2 characters, not null
4) Create the 'categories' table with a one-to-many relation to the 'suppliers'. Use the following columns:
- id:  integer, primary key
- name: 50 characters, not null
- description:  255 characters, nullable
- supplier_id: int, foreign key references suppliers(id)
5) Create the 'products' table with a one-to-many relation to the 'categories' table. Use the following columns:
- id: integer, primary key
- name: 50 characters, not null
- price: decimal (10, 2), not null
- category_id: int, foreign key references categories(id)
- update_timestamp: datetime, not null, default getdate()
6) Populate the 'suppliers' table with sample data.
7) Populate the 'categories' table with sample data.
8) Populate the 'products' table with sample data.
9) Create a view named 'product_list' that displays the following columns:
- product_id
- product_name
- category_name
- supplier_name
*/

-- Step 1: Check if the database 'Inventory' exists, if it does exist, drop it and create a new one.
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Inventory')
BEGIN
    DROP DATABASE Inventory;
END
CREATE DATABASE Inventory;

-- Step 2: Set the default database to 'Inventory'.
USE Inventory;

-- Step 3: Create a 'suppliers' table.
CREATE TABLE suppliers (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL
);

-- Step 4: Create the 'categories' table with a one-to-many relation to the 'suppliers'.
CREATE TABLE categories (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

-- Step 5: Create the 'products' table with a one-to-many relation to the 'categories' table.
CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    update_timestamp DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

