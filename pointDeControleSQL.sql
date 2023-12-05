

----------1 Implémentez le modèle de relation fourni en utilisant SQL-------

CREATE TABLE customer ( customer_id INT PRIMARY KEY, customer_name VARCHAR(50), customer_tel VARCHAR(20) );

CREATE TABLE product ( product_id INT PRIMARY KEY, product_name VARCHAR(50), category VARCHAR(50), price DECIMAL(10,2) );

CREATE TABLE orders ( customer_id INT, product_id INT, orderDate DATE, quantity INT, total_amount DECIMAL(10,2), 
FOREIGN KEY (customer_id) REFERENCES customer(customer_id), 
FOREIGN KEY (product_id) REFERENCES product(product_id) );

------------2 Insérez des données dans vos tables-------

INSERT INTO customer (customer_id, customer_name, customer_tel) VALUES (1, 'lamine Gueye', '777885996');
INSERT INTO customer (customer_id, customer_name, customer_tel) VALUES (2, 'Mouhammad Ba', '77123 45 54');
INSERT INTO customer (customer_id, customer_name, customer_tel) VALUES (3, 'Ibrahima Gaye', '77456 65 78');


INSERT INTO product (product_id, product_name, category, price) VALUES (1, 'widget', 'electronique', 25000);
INSERT INTO product (product_id, product_name, category, price) VALUES (2, 'gadget', 'electronique', 25000);
INSERT INTO product (product_id, product_name, category, price) VALUES (3, 'widget', 'electronique', 25000);


INSERT INTO orders (customer_id, product_id, orderDate, quantity, total_amount) VALUES (1, 8, '2021-01-01', 2, 30000);
INSERT INTO orders (customer_id, product_id, orderDate, quantity, total_amount) VALUES (2, 3, '2021-01-01', 6, 100000);
INSERT INTO orders (customer_id, product_id, orderDate, quantity, total_amount) VALUES (3, 1, '2021-01-01', 2, 30000);

--------------333333333333---------------

SELECT Customer.customer_name, 
SUM(Order_.quantity * Product.price) AS total_cost 
FROM Customer 
INNER JOIN Order_ ON Customer.customer_id = Order_.customer_id 
INNER JOIN Product 
ON Order_.product_id = Product.product_id 
Where product.Product_name = 'widget' 
AND Product.Product_name = 'gadget';

--------------4444444444444444-------------

SELECT Product.product_name,
SUM(Order_.quantity) AS total_quantity 
FROM Product 
INNER JOIN Orders 
ON Product.product_id = Orders.product_id 
GROUP BY Product.product_name = 'widget';



-------------5555555555555555-----------


SELECT Customer_name, sum(quantity*price) 'coût total'
FROM Customer 
JOIN Product 
ON customer.Customer_id = product.Product_id
INNER JOIN Orders
ON p.Product_id = o.Product_id
Where p.Product_name = 'widget';

------------666666666666-------------

SELECT Customer.customer_name, 
SUM(Orders.quantity * Product.price) 
AS total_cost 
FROM Customer 
INNER JOIN Order_ 
ON Customer.customer_id = Order_.customer_id 
INNER JOIN Product 
ON Orders.product_id = Product.product_id 
WHERE Orders.product_id = 3 

---------------7777777777777-----------

SELECT Customer_name, sum(quantity) 'Nombre Total', sum(quantity*price) 'coût total des commandes'
FROM Customer 
JOIN Product 
ON customer.Customer_id = product.Product_id
JOIN Orders 
ON product.Product_id = orders.Product_id
Where product.Product_name = 'widget'AND product.Product_name = 'gadget';


----------------88888888888--------------


SELECT Customer_name, Product_name, sum(quantity) 'la quantité totale'
FROM Customer 
JOIN Product
ON Customer.Customer_id = Product.Product_id
JOIN Orders
ON Product.Product_id = Orders.Product_id
GROUP BY Product_name
having quantity >= 1;

---------------999999999999----------------

SELECT Customer_name, sum(quantity) 'le nombre total de commandes passées par chaque client'
FROM Customer
JOIN Product
ON Customer.Customer_id = Product.Product_id
JOIN Orders
ON Product.Product_id = Orders.Product_id


------------1000000000000-----------

SELECT Customer.customer_name,
COUNT(*) AS total_orders FROM Customer 
INNER JOIN Orders
ON Customer.customer_id = Order_.customer_id 
GROUP BY Customer.customer_name HAVING COUNT(*) = 7;



