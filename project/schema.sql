-- Creating tables

CREATE TABLE "customers" (
    "customer_id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT UNIQUE NOT NULL,
    "country" TEXT NOT NULL
);

CREATE TABLE "products" (
    "product_id" INTEGER PRIMARY KEY,
    "product_name" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "unit_price" REAL NOT NULL
);

CREATE TABLE "orders" (
    "order_id" INTEGER PRIMARY KEY,
    "customer_id" INTEGER NOT NULL,
    "order_date" DATE NOT NULL,
    "status" TEXT CHECK(status IN ('Pending', 'Completed', 'Cancelled')) NOT NULL,
    FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id")
);

CREATE TABLE "order_items" (
    "order_item_id" INTEGER PRIMARY KEY,
    "order_id" INTEGER NOT NULL,
    "product_id" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "unit_price" REAL NOT NULL,
    FOREIGN KEY ("order_id") REFERENCES "orders"("order_id"),
    FOREIGN KEY ("product_id") REFERENCES "products"("product_id")
);

CREATE TABLE "payments" (
    "payment_id" INTEGER PRIMARY KEY,
    "order_id" INTEGER NOT NULL,
    "payment_date" DATE NOT NULL,
    "payment_method" TEXT CHECK(payment_method IN ('Credit Card', 'Debit Card', 'Pix', 'Boleto', 'PayPal')) NOT NULL,
    "amount" REAL NOT NULL,
    FOREIGN KEY ("order_id") REFERENCES "orders"("order_id")
);

CREATE TABLE "shipping" (
    "shipping_id" INTEGER PRIMARY KEY,
    "order_id" INTEGER NOT NULL,
    "shipping_status" TEXT CHECK("shipping_status" IN ('Pending', 'Shipped', 'Delivered', 'Returned')) NOT NULL,
    "shipped_date" DATE,
    "delivery_date" DATE,
    FOREIGN KEY ("order_id") REFERENCES "orders"("order_id")
);

CREATE TABLE "finished_orders_log" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "order_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "order_date" DATE NOT NULL,
    "status" TEXT CHECK(status IN ('Completed', 'Cancelled')) NOT NULL,
    FOREIGN KEY ("order_id") REFERENCES "orders"("order_id")
    FOREIGN KEY ("customer_id") REFERENCES "customers"("customer_id")
);


-- Creating Views

CREATE VIEW "payments_with_card" AS
SELECT "orders"."order_id", "payments"."payment_method"
FROM "payments"
JOIN "orders" ON "payments"."order_id"="orders"."order_id"
WHERE "payments"."payment_method" = 'Credit Card' OR "payments"."payment_method" = 'Debit Card';

CREATE VIEW "pending_orders" AS
SELECT * FROM "orders"
WHERE "status" = 'Pending';

-- Creating indexes

CREATE INDEX "index_customer_email" ON "customers"("email");
CREATE INDEX "index_product_name" ON "products"("product_name");
CREATE INDEX "index_product_price" ON "products"("unit_price");
CREATE INDEX "index_order_date" ON "orders"("order_date");
CREATE INDEX "index_shipping_status" ON "shipping"("shipping_status");

-- Creating triggers

CREATE TRIGGER
    AFTER UPDATE ON "orders"
    WHEN "new"."status" = 'Completed'
        OR "new"."status" = 'Cancelled'
BEGIN
    INSERT INTO "finished_orders_log" ("order_id", "customer_id", "order_date", "status") VALUES
    ("old"."order_id", "old"."customer_id", "old"."order_date", "new"."status");
END;

