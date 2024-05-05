USE sampleSQL;

CREATE TABLE orders(
 first_name VARCHAR(255), last_name VARCHAR(255),
 product_name VARCHAR(255), product_description TEXT,
 product_returnable VARCHAR(50), seller VARCHAR(255), order_id VARCHAR(45),
 total INT, date DATE, order_status VARCHAR(50), address TEXT
);

SHOW tables;

INSERT INTO orders (first_name, last_name, product_name, product_description, product_returnable, seller, order_id, total, date, order_status, address)
VALUES
('John', 'Wick', 'Apple Iphone 13', 'Mobile Phone', 'No', 'Apple', 'A13', 50000, '2024-04-27', 'Approved', '452001, Indore, MP'),
('John', 'Wick', 'BLACK CHECKED TSHIRT L', 'Apparel', 'Yes', 'Apple', 'A15', 500, '2024-04-27', 'Approved', '452001, Indore, MP'),
('Mary', 'Ann', 'HP VICTUS', 'Laptop', 'No', 'HP', 'A14', 53000, '2024-04-27', 'Approved', '42001 Indore');

-- CHECKING STATUS OF ORDER by ORDER ID
SELECT order_id, order_status
FROM orders
WHERE order_id = 'A15';

-- TOTAL AMOUNT OF MY ORDERS
SELECT SUM(total) as total_amount
FROM orders;

-- UPDATING ONE OF ORDER'S CITY/ADDRESS
UPDATE orders
SET address = REPLACE(address, '452001, Indore, MP', '450001, Khandwa MP')
WHERE order_id = 'A13';


SELECT * FROM orders WHERE order_id = 'A13';

-- CHANGING PRODUCT DESCRIPTION
UPDATE orders
SET product_description = REPLACE(product_description, 'Mobile Phone', 'IPHONE')
WHERE order_id = 'A13';

SELECT * FROM orders;

-- DISPLAYING RETURNABLE PRODUCTS
SELECT * FROM orders
WHERE product_returnable = 'Yes';