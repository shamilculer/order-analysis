INSERT INTO Customers (customer_id, customer_name, registration_date) VALUES 
(1, 'John Doe', '2019-01-01'),
(2, 'Jane Doe', '2019-01-15'),
(3, 'Alice Jones', '2019-02-01'),
(4, 'Bobby Louis', '2019-02-15');

INSERT INTO Products (product_id, product_name, category) VALUES 
(1, 'Product A', 'Category 1'),
(2, 'Product B', 'Category 2'),
(3, 'Product C', 'Category 1');

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2019-01-15', 100.00),
(2, 1, '2019-02-01', 200.00),
(3, 2, '2019-02-15', 50.00),
(4, 3, '2019-03-01', 300.00),
(5, 4, '2019-03-15', 75.00);

INSERT INTO Order_Items (item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 100.00),
(2, 2, 1, 2, 100.00),
(3, 3, 2, 1, 50.00),
(4, 4, 3, 3, 100.00),
(5, 5, 1, 1, 75.00);
