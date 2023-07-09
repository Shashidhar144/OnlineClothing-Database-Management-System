-- Customers table
drop table Customers
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100)
);

-- Products table
CREATE TABLE Products(
  product_id INT PRIMARY KEY,
  namee VARCHAR(100),
  pricee DECIMAL(10,2),
  description VARCHAR(500),
  category_id INT,
  brand_id INT,
  size_id INT,
  color_id INT,
  material_id INT,
  discount_id INT,
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
  FOREIGN KEY (size_id) REFERENCES Sizee(size_id),
  FOREIGN KEY (color_id) REFERENCES Color(color_id),
  FOREIGN KEY (material_id) REFERENCES Material(material_id),
  FOREIGN KEY (discount_id) REFERENCES Discount(discount_id)
);

-- Category table

CREATE TABLE Category (
  category_id INT PRIMARY KEY,
  name VARCHAR(100),
  description VARCHAR(500)
);

select * from category
-- Brand table
CREATE TABLE Brand (
  brand_id INT PRIMARY KEY,
  name VARCHAR(100)
);

-- Order table
CREATE TABLE Orderr (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_price DECIMAL(10,2),
  shipping_address_id INT,
  billing_address_id INT,
  payment_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (shipping_address_id) REFERENCES ShippingAddress(address_id),
  FOREIGN KEY (billing_address_id) REFERENCES BillingAddress(address_id),
  FOREIGN KEY (payment_id) REFERENCES Payment(payment_id)
);

-- OrderItem table
CREATE TABLE OrderItem (
  order_id INT,
  product_id INT,
  quantity INT,
  PRIMARY KEY (order_id, product_id),
  FOREIGN KEY (order_id) REFERENCES Orderr(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Payment table
CREATE TABLE Payment (
  payment_id INT PRIMARY KEY,
  amount DECIMAL(10,2),
  status VARCHAR(50),
  methodd VARCHAR(50),
  datee DATE,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
select * from customers
-- ShippingAddress table
CREATE TABLE ShippingAddress (
  address_id INT PRIMARY KEY,
  street VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(20),
  country VARCHAR(50)
);

-- BillingAddress table
CREATE TABLE BillingAddress (
  address_id INT PRIMARY KEY,
  street VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  zip_code VARCHAR(20),
  country VARCHAR(50)
);

-- Size table
select * from billingaddress
select * from sizee;
CREATE TABLE Sizee (
  size_id INT PRIMARY KEY,
  name VARCHAR(50)
);


-- Color table
CREATE TABLE Color (
  color_id INT PRIMARY KEY,
  name VARCHAR(50)
);

-- Material table
CREATE TABLE Material (
  material_id INT PRIMARY KEY,
  name VARCHAR(50),
  description VARCHAR(500)
);

-- Discount table
CREATE TABLE Discount (
  discount_id INT PRIMARY KEY,
  name VARCHAR(100),
  amount DECIMAL(5,2)
);



--realtions

create table can_belong(
    product_id primary key,
     brand_id primary key,
     FOREIGN KEY (product_id) REFERENCES Product(product_id),
     FOREIGN KEY (brand_id) REFERENCES Brand(Brand_id)
     );
     
create table can_belong_to(
    product_id primary key,
     category_id primary key,
     FOREIGN KEY (product_id) REFERENCES Product(product_id),
     FOREIGN KEY (category_id) REFERENCES Category(category_id)
    );
    
create table variations(
    product_id primary key,
     color_id primary key,
     FOREIGN KEY (product_id) REFERENCES Product(product_id),
     FOREIGN KEY (color_id) REFERENCES Color(color_id)
    );
    
    
create table measure_prod(
    product_id primary key,
     size_id primary key,
     FOREIGN KEY (product_id) REFERENCES Product(product_id),
     FOREIGN KEY (size_id) REFERENCES Size(size_id)
    );


select * from Customers;
select * from Products;
select * from Category;
select * from Brand;
select * from Orderr;
select * from Orderitem;
select * from Payment;
select * from Shippingaddress;
select * from Billingaddress;
select * from Sizee;
select * from Color;
select * from Material;
Select * from Discount;


--=================================================================================================tables



INSERT INTO Customers values(1, 'Trishul', 'tejus', 'tritej@gmail.com', 'password123');
INSERT INTO Customers values(2, 'Sai', 'charan', 'saicharan@gmail.com', 'password456');
INSERT INTO Customers values(3, 'Manoj', 'harsha', 'manojh@gmail.com', 'password789');
INSERT INTO Customers values(4, 'Supraj', 'pulluru', 'suprajpul@gmail.com', 'passwordabc');
INSERT INTO Customers values(5, 'siddarth', 'nath', 'sidnath@gmail.com', 'passworddef');

select * from customers

 (product_id, namee, pricee, description, category_id, brand_id, size_id, color_id, material_id, discount_id)
INSERT INTO Products VALUES (1, 'T-Shirt', 20.00, 'A comfortable cotton T-Shirt', 1, 1, 1, 1, 1, 1);
INSERT INTO Products values(2, 'Sneakers', 80.00, 'A pair of running shoes', 2, 2, 2, 2, 2, 2);
INSERT INTO Products values(3, 'Jeans', 60.00, 'A pair of classic denim jeans', 1, 3, 3, 3, 3, 3);
INSERT INTO Products values(4, 'Dress', 100.00, 'A formal evening dress', 4, 4, 4, 4, 4, 4);
INSERT INTO Products values(5, 'Watch', 150.00, 'A stainless steel wristwatch', 5, 5, 5, 5, 5, 5);


INSERT INTO Category (category_id, name, description) VALUES(1, 'Clothing', 'Apparel and accessories for men and women');
INSERT INTO Category (category_id, name, description) VALUES(2, 'Shoes', 'Footwear for men and women');
INSERT INTO Category (category_id, name, description) VALUES(3, 'Accessories', 'Watches, jewelry, and other fashion accessories');
INSERT INTO Category (category_id, name, description) VALUES(4, 'Dresses', 'Formal and casual dresses for women');
INSERT INTO Category (category_id, name, description) VALUES(5, 'Watches', 'Analog and digital wristwatches for men and women');



INSERT INTO Brand values(1, 'Nike');
INSERT INTO Brand values(2, 'Adidas');
INSERT INTO Brand values(3, 'Levi Strauss');
INSERT INTO Brand values(4, 'Calvin Klein');
INSERT INTO Brand values(5, 'Rolex');



--Order table 
INSERT INTO Orderr (order_id, customer_id, order_date, total_price, shipping_address_id, billing_address_id, payment_id)
VALUES
insert into orderr values(1, 1, '25-04-2022', 250.00, 1, 2, 1);
insert into orderr values(2, 2, '02-05-2022', 125.50, 3, 3, 2);
insert into orderr values(3, 3, '05-03-2022', 75.00, 5, 5, 3);
insert into orderr values(4, 4, '05-04-2022', 200.00, 4, 4, 4);
insert into orderr values(5, 5, '05-05-2022', 350.00, 2, 2, 5);

select * from orderr
-- OrderItem table
INSERT INTO OrderItem VALUES(1, 1, 2);

INSERT INTO OrderItem VALUES(1, 2, 1);
INSERT INTO OrderItem VALUES(2, 3, 3);
INSERT INTO OrderItem VALUES(3, 4, 1);
INSERT INTO OrderItem VALUES(3, 5, 2);
select * from orderitem
==========================================================================================
INSERT INTO OrderItem VALUES(3, 4, 2);
INSERT INTO OrderItem VALUES(4, 7, 2);
INSERT INTO OrderItem VALUES(4, 8, 1);
INSERT INTO OrderItem VALUES(4, 9, 1);
INSERT INTO OrderItem VALUES(5, 10, 1);

select * from orderitem
=============================================================================================
-- Payment table
INSERT INTO Payment (payment_id, amount, status, method, date, customer_id)
VALUES
(1, 250.00, 'PAID', 'CREDITCARD', '2022-04-25', 1),
(2, 125.50, 'PAID', 'PAYPAL', '2022-05-02', 2),
(3, 75.00, 'PAID', 'DEBIT CARD', '2022-05-03', 3),
(4, 200.00, 'PAID', 'CREDIT CARD', '2022-05-04', 4),
--(5, 350.00, 'PAID', 'APPLE PAY', '2022-05-05', 5);
==============================================================================================


-- ShippingAddress table
INSERT INTO shippingAddress (address_id, street, city, state, zip_code, country)
VALUES
 (1, 'fathimanagar', 'hanmakonda', 'telangana', '500037', 'India');
INSERT INTO shippingAddress VALUES (2, 'housingboard', 'hyderabad', 'telangana', '500038', 'India');
INSERT INTO shippingAddress VALUES(3, 'patelnagar', 'surat', 'gujarath', '500467', 'India');
INSERT INTO shippingAddress VALUES(4, '101 Washington St', 'Boston', 'MA', '02102', 'USA');
INSERT INTO shippingAddress VALUES(5, 'Market St', 'kasargud', 'kerala', '500123', 'India');
select * from shippingaddress;

-- BillingAddress table
INSERT INTO BillingAddress (address_id, street, city, state, zip_code, country)
VALUES
 (1, 'fathimanagar', 'hanmakonda', 'telangana', '500037', 'India');
INSERT INTO BillingAddress VALUES (2, 'housingboard', 'hyderabad', 'telangana', '500038', 'India');
INSERT INTO BillingAddress VALUES(3, 'patelnagar', 'surat', 'gujarath', '500467', 'India');
INSERT INTO BillingAddress VALUES(4, '101 Washington St', 'Boston', 'MA', '02102', 'USA');
INSERT INTO BillingAddress VALUES(5, 'Market St', 'kasargud', 'kerala', '500123', 'India');
delete from billingaddress where address_id<>0;

select * from BillingAddress;

select * from payment

INSERT INTO Payment(payment_id, amount, status, methodd, datee, customer_id) VALUES (1, 99, 'PAID', 'Creditcard', '01-01-2022', 1);
INSERT INTO Payment VALUES(2, 149.99, 'PAID', 'PayPal', '01-02-2022', 2);
INSERT INTO Payment VALUES(3, 199.99, 'PENDING', 'Bank Transfer', '01-03-2022', 3);
INSERT INTO Payment VALUES(4, 299.99, 'PAID', 'Credit Card', '01-04-2022', 4);
INSERT INTO Payment VALUES(5, 99.99, 'PAID', 'Credit Card', '01-05-2022', 5);


select * from sizee

INSERT INTO Sizee (size_id, name) VALUES (1, 'Small');
INSERT INTO Sizee (size_id, name) VALUES(2, 'Medium');
INSERT INTO Sizee (size_id, name) VALUES(3, 'Large');
INSERT INTO Sizee (size_id, name) VALUES(4, 'XL');
INSERT INTO Sizee (size_id, name) VALUES(5, 'XXL');

select * from color;

INSERT INTO Color (color_id, name) VALUES (1, 'Red');
INSERT INTO Color (color_id, name) VALUES (2, 'Blue');
INSERT INTO Color (color_id, name) VALUES (3, 'Green');
INSERT INTO Color (color_id, name) VALUES (4, 'Yellow');
INSERT INTO Color (color_id, name) VALUES (5, 'Black');

select * from  material;

INSERT INTO Material (material_id, name, description) VALUES (1, 'Cotton', 'Soft and breathable fabric');
INSERT INTO Material (material_id, name, description) VALUES (2, 'Polyester', 'Durable and quick-drying fabric');
INSERT INTO Material (material_id, name, description) VALUES (3, 'Wool', 'Warm and insulating fabric');
INSERT INTO Material (material_id, name, description) VALUES (4, 'Leather', 'Strong and flexible material');
INSERT INTO Material (material_id, name, description) VALUES (5, 'Denim', 'Sturdy and versatile fabric');

select *from discount

INSERT INTO Discount (discount_id, name, amount) VALUES (1, 'Summer Sale', 0.20);
INSERT INTO Discount (discount_id, name, amount) VALUES(2, 'Black Friday', 0.30);
INSERT INTO Discount (discount_id, name, amount) VALUES(3, 'Holiday Season', 0.25);
INSERT INTO Discount (discount_id, name, amount) VALUES(4, 'New Year', 0.15);
INSERT INTO Discount (discount_id, name, amount) VALUES(5, 'Clearance', 0.50);



============================================================================================================================================================
Queries

What is the total number of orders placed by each customer?

SELECT customer_id, COUNT(*) as order_count FROM Orderr GROUP BY customer_id;


What is the total revenue generated from each category of products?


SELECT Category.name, SUM(OrderItem.quantity * Products.pricee) as revenue
FROM OrderItem
JOIN Products ON OrderItem.product_id = Products.product_id
JOIN Category ON Products.category_id = Category.category_id
GROUP BY Category.name;



What is the total revenue generated by each brand of products?


SELECT Brand.name, SUM(OrderItem.quantity * Products.pricee) as revenue
FROM OrderItem
JOIN Products ON OrderItem.product_id = Products.product_id
JOIN Brand ON Products.brand_id = Brand.brand_id
GROUP BY Brand.name;


What are the names and quantities of all products ordered in each order?

SELECT Orderr.order_id, Products.namee, OrderItem.quantity
FROM Orderr
JOIN OrderItem ON Orderr.order_id = OrderItem.order_id
JOIN Products ON OrderItem.product_id = Products.product_id;


What is the total revenue generated by each order?


SELECT Orderr.order_id, SUM(Products.pricee * OrderItem.quantity) AS revenue
FROM Orderr
JOIN OrderItem ON Orderr.order_id = OrderItem.order_id
JOIN Products ON OrderItem.product_id = Products.product_id
GROUP BY Orderr.order_id;

Retrieve the names of all customers who have placed an order:

SELECT DISTINCT c.first_name, c.last_name FROM Customers c
JOIN Orderr o ON c.customer_id = o.customer_id;


Retrieve the total amount paid by each customer:


SELECT c.customer_id, c.first_name, c.last_name, SUM(p.amount) AS total_paid 
FROM Customers c 
JOIN Payment p ON c.customer_id = p.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name;

select * from customers
select * from payment


Retrieve the names of all customers who have  placed an order:

SELECT c.first_name, c.last_name 
FROM Customers c
LEFT JOIN Orderr o ON c.customer_id = o.customer_id
WHERE o.order_id IS not NULL;
