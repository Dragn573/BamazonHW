create database Bamazon_DB
use Bamazon_DB;
create table products(
 position int auto_increment,
 productName varchar(20) not null,
 departmentName varchar(40) not null,
 price decimal(10, 4) not null,
 stockQuantity int not null,
 primary key(position)
 
 )


select * from products;

INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('baseball', 'Catch me', 3, 150); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('glove', 'Fits good', 5, 75); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('tv', 'Big Screens', 900, 20); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('jeans', 'Tommy fit', 12, 100); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('grapes', 'Farmer Jack', 3, 50); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('watch', 'Clock Maker', 150, 20); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('sneaker', 'Sneaker-Heads', 200, 15); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('socks', 'Great Feel', 20, 30); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('laptop', 'Hackers', 700, 25); 
INSERT INTO products (productName, departmentName, Price, stockQuantity)
VALUES ('tires', 'Burn Rubber', 100, 300); 