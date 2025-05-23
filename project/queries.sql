-- Inserting fictional data

INSERT INTO "customers" ("customer_id", "first_name", "last_name", "email", "country") VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'UK'),
(3, 'Carlos', 'Santos', 'carlos.santos@example.com', 'Brazil'),
(4, 'Emily', 'Wang', 'emily.wang@example.com', 'Australia'),
(5, 'Ahmed', 'Khan', 'ahmed.khan@example.com', 'India'),
(6, 'Anna', 'Müller', 'anna.mueller@example.com', 'Germany'),
(7, 'Liam', 'Brown', 'liam.brown@example.com', 'Canada'),
(8, 'Sofia', 'Gonzalez', 'sofia.gonzalez@example.com', 'Spain'),
(9, 'Noah', 'Wilson', 'noah.wilson@example.com', 'USA'),
(10, 'Olivia', 'Taylor', 'olivia.taylor@example.com', 'UK'),
(11, 'Lucas', 'Martinez', 'lucas.martinez@example.com', 'Mexico'),
(12, 'Isabella', 'Rossi', 'isabella.rossi@example.com', 'Italy'),
(13, 'Ethan', 'Lee', 'ethan.lee@example.com', 'South Korea'),
(14, 'Mia', 'Nguyen', 'mia.nguyen@example.com', 'Vietnam'),
(15, 'William', 'Anderson', 'william.anderson@example.com', 'USA'),
(16, 'Ava', 'Clark', 'ava.clark@example.com', 'Australia'),
(17, 'Benjamin', 'Lopez', 'benjamin.lopez@example.com', 'Argentina'),
(18, 'Charlotte', 'Kim', 'charlotte.kim@example.com', 'South Korea'),
(19, 'James', 'Patel', 'james.patel@example.com', 'India'),
(20, 'Amelia', 'Harris', 'amelia.harris@example.com', 'UK');

INSERT INTO "products" ("product_id", "product_name", "category", "unit_price") VALUES
(1, 'Laptop Pro', 'Electronics', 1200.00),
(2, 'Smartphone Max', 'Electronics', 950.00),
(3, 'Wireless Headphones', 'Accessories', 180.00),
(4, 'Gaming Mouse', 'Accessories', 80.00),
(5, '4K Monitor', 'Electronics', 450.00),
(6, 'Mechanical Keyboard', 'Accessories', 150.00),
(7, 'Desk Chair', 'Furniture', 300.00),
(8, 'Standing Desk', 'Furniture', 650.00),
(9, 'Bluetooth Speaker', 'Accessories', 120.00),
(10, 'Smartwatch', 'Electronics', 250.00),
(11, 'Tablet X', 'Electronics', 600.00),
(12, 'External SSD 1TB', 'Electronics', 200.00),
(13, 'Gaming Console', 'Electronics', 500.00),
(14, 'Drone Pro', 'Electronics', 900.00),
(15, 'VR Headset', 'Electronics', 800.00),
(16, 'Leather Office Chair', 'Furniture', 450.00),
(17, 'Bookshelf', 'Furniture', 200.00),
(18, 'Fitness Tracker', 'Electronics', 120.00),
(19, 'Noise Cancelling Earbuds', 'Accessories', 160.00),
(20, 'Portable Projector', 'Electronics', 550.00);

INSERT INTO "orders" ("order_id", "customer_id", "order_date", "status") VALUES
(1, 1, '2024-01-10', 'Completed'),
(2, 2, '2024-01-12', 'Completed'),
(3, 3, '2024-01-15', 'Pending'),
(4, 4, '2024-01-20', 'Completed'),
(5, 5, '2024-01-25', 'Cancelled'),
(6, 6, '2024-02-01', 'Completed'),
(7, 7, '2024-02-03', 'Completed'),
(8, 8, '2024-02-05', 'Pending'),
(9, 9, '2024-02-10', 'Completed'),
(10, 10, '2024-02-15', 'Completed'),
(11, 11, '2024-02-20', 'Completed'),
(12, 12, '2024-02-25', 'Completed'),
(13, 13, '2024-03-01', 'Cancelled'),
(14, 14, '2024-03-05', 'Completed'),
(15, 15, '2024-03-10', 'Completed'),
(16, 16, '2024-03-12', 'Pending'),
(17, 17, '2024-03-15', 'Completed'),
(18, 18, '2024-03-20', 'Completed'),
(19, 19, '2024-03-25', 'Completed'),
(20, 20, '2024-03-30', 'Completed'),
(21, 1, '2024-04-01', 'Completed'),
(22, 2, '2024-04-05', 'Pending'),
(23, 3, '2024-04-10', 'Completed'),
(24, 4, '2024-04-12', 'Completed'),
(25, 5, '2024-04-15', 'Completed'),
(26, 6, '2024-04-18', 'Completed'),
(27, 7, '2024-04-20', 'Cancelled'),
(28, 8, '2024-04-25', 'Completed'),
(29, 9, '2024-04-28', 'Pending'),
(30, 10, '2024-04-30', 'Completed');

INSERT INTO "order_items" ("order_item_id", "order_id", "product_id", "quantity", "unit_price") VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 3, 2, 180.00),
(3, 2, 2, 1, 950.00),
(4, 2, 4, 1, 80.00),
(5, 3, 5, 1, 450.00),
(6, 3, 6, 1, 150.00),
(7, 4, 7, 2, 300.00),
(8, 5, 8, 1, 650.00),
(9, 6, 9, 3, 120.00),
(10, 7, 10, 1, 250.00),
(11, 8, 11, 1, 600.00),
(12, 9, 12, 2, 200.00),
(13, 10, 13, 1, 500.00),
(14, 11, 14, 1, 900.00),
(15, 12, 15, 1, 800.00),
(16, 13, 16, 1, 450.00),
(17, 14, 17, 2, 200.00),
(18, 15, 18, 1, 120.00),
(19, 16, 19, 1, 160.00),
(20, 17, 20, 1, 550.00),
(21, 18, 1, 1, 1200.00),
(22, 18, 4, 1, 80.00),
(23, 19, 5, 1, 450.00),
(24, 20, 6, 2, 150.00),
(25, 21, 9, 1, 120.00),
(26, 21, 2, 1, 950.00),
(27, 22, 7, 1, 300.00),
(28, 23, 3, 2, 180.00),
(29, 24, 8, 1, 650.00),
(30, 25, 10, 1, 250.00);

INSERT INTO "payments" ("payment_id", "order_id", "payment_date", "payment_method", "amount") VALUES
(1, 1, '2024-01-10', 'Credit Card', 1200.00),
(2, 2, '2024-01-12', 'PayPal', 950.00),
(3, 4, '2024-01-20', 'Credit Card', 300.00),
(4, 6, '2024-02-01', 'Debit Card', 650.00),
(5, 7, '2024-02-03', 'Credit Card', 120.00),
(6, 9, '2024-02-10', 'Pix', 450.00),
(7, 10, '2024-02-15', 'PayPal', 200.00),
(8, 11, '2024-02-20', 'Debit Card', 500.00),
(9, 12, '2024-02-25', 'Credit Card', 800.00),
(10, 14, '2024-03-05', 'PayPal', 180.00),
(11, 15, '2024-03-10', 'Credit Card', 250.00),
(12, 17, '2024-03-15', 'Debit Card', 400.00),
(13, 18, '2024-03-20', 'Credit Card', 500.00),
(14, 19, '2024-03-25', 'Pix', 600.00),
(15, 20, '2024-03-30', 'PayPal', 550.00),
(16, 21, '2024-04-01', 'Credit Card', 1200.00),
(17, 23, '2024-04-10', 'Debit Card', 900.00),
(18, 24, '2024-04-12', 'Pix', 650.00),
(19, 25, '2024-04-15', 'Credit Card', 700.00),
(20, 26, '2024-04-18', 'PayPal', 950.00),
(21, 28, '2024-04-25', 'Credit Card', 850.00),
(22, 30, '2024-04-30', 'Debit Card', 400.00);

INSERT INTO "shipping" ("shipping_id", "order_id", "shipping_status", "shipped_date", "delivery_date") VALUES
(1, 1, 'Delivered', '2024-01-11', '2024-01-15'),
(2, 2, 'Delivered', '2024-01-13', '2024-01-18'),
(3, 4, 'Delivered', '2024-01-21', '2024-01-26'),
(4, 6, 'Delivered', '2024-02-02', '2024-02-06'),
(5, 7, 'Pending', '2024-02-04', NULL),
(6, 9, 'Delivered', '2024-02-11', '2024-02-15'),
(7, 10, 'Delivered', '2024-02-16', '2024-02-20'),
(8, 11, 'Delivered', '2024-02-21', '2024-02-26'),
(9, 12, 'Delivered', '2024-02-26', '2024-03-02'),
(10, 14, 'Delivered', '2024-03-06', '2024-03-10'),
(11, 15, 'Pending', '2024-03-11', NULL),
(12, 17, 'Delivered', '2024-03-16', '2024-03-21'),
(13, 18, 'Delivered', '2024-03-21', '2024-03-26'),
(14, 19, 'Delivered', '2024-03-26', '2024-03-31'),
(15, 20, 'Pending', '2024-03-31', NULL),
(16, 21, 'Delivered', '2024-04-02', '2024-04-06'),
(17, 23, 'Pending', '2024-04-11', NULL),
(18, 24, 'Delivered', '2024-04-13', '2024-04-18'),
(19, 25, 'Delivered', '2024-04-16', '2024-04-21'),
(20, 26, 'Delivered', '2024-04-19', '2024-04-24'),
(21, 28, 'Delivered', '2024-04-26', '2024-05-01'),
(22, 30, 'Pending', '2024-05-01', NULL);


-- Population with data the table of finished orders log

UPDATE "orders"
SET "status" = 'Completed'
WHERE
"status" = 'Completed';

UPDATE "orders"
SET "status" = 'Cancelled'
WHERE
"status" = 'Cancelled';

-- Cleaning the duplicates that even might appear (Don't have used the unique constraint in the column to explore the delete statement)

DELETE FROM "finished_orders_log"
WHERE rowid NOT IN (
  SELECT MIN(rowid)
  FROM "finished_orders_log"
  GROUP BY "order_id"
);

-- Total Revenue

SELECT ROUND(SUM("order_items"."quantity" * "order_items"."unit_price"), 2) AS "total_revenue"
FROM "order_items"
JOIN "orders" ON "order_items"."order_id" = "orders"."order_id"
WHERE "orders"."status" = 'Completed';

-- Monthly Revenue

SELECT strftime('%Y-%m', "o"."order_date") AS "month",
    ROUND(SUM("order_items"."quantity" * "order_items"."unit_price"), 2) AS "revenue"
FROM "order_items"
JOIN "orders" AS "o" ON "order_items"."order_id" = "o"."order_id"
WHERE "o"."status" = 'Completed'
GROUP BY "month"
ORDER BY "month";

-- Most popular products

SELECT "p"."product_name", SUM("order_items"."quantity") AS "total_sold"
FROM "order_items"
JOIN "products" AS "p" ON "order_items"."product_id" = "p"."product_id"
JOIN "orders" AS "o" ON "order_items"."order_id" = "o"."order_id"
WHERE "o"."status" = 'Completed'
GROUP BY "p"."product_name"
ORDER BY "total_sold" DESC;

-- Cancellation Rate

SELECT ROUND(100.0 *
        (SELECT COUNT(*) FROM "orders" WHERE "status" = 'Cancelled') /
        (SELECT COUNT(*) FROM "orders"), 2
    ) AS "cancellation_rate_percent";

-- Average Order Value

SELECT ROUND(SUM("oi"."quantity" * "oi"."unit_price") / COUNT(DISTINCT "o"."order_id"), 2) AS "avg_order_value"
FROM "order_items" AS "oi"
JOIN "orders" AS "o" ON "oi"."order_id" = "o"."order_id"
WHERE "o"."status" = 'Completed';

-- Revenue by category

SELECT "p"."category", ROUND(SUM("oi"."quantity" * "oi"."unit_price"), 2) AS "revenue"
FROM "order_items" AS "oi"
JOIN "products" AS "p" ON "oi"."product_id" = "p"."product_id"
JOIN "orders" AS "o" ON "oi"."order_id" = "o"."order_id"
WHERE "o"."status" = 'Completed'
GROUP BY "p"."category"
ORDER BY "revenue" DESC;

-- Pending orders, ordered by the oldest

SELECT * FROM "orders"
WHERE "status" = 'Pending'
ORDER BY "order_date" ASC;

-- Average shipping

SELECT ROUND(AVG(JULIANDAY("delivery_date") - JULIANDAY("shipped_date")), 2) AS "average_shipping"
FROM "shipping";
