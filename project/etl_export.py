# E-commerce Data ETL for Power BI

import sqlite3
import pandas as pd

# Connecting to SQLite
conn = sqlite3.connect('e-commerce.db')

# Querying the database

queries = {
    "total_revenue": """
        SELECT ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_revenue
        FROM order_items oi
        JOIN orders o ON oi.order_id = o.order_id
        WHERE o.status = 'Completed';
    """,
    "monthly_revenue": """
        SELECT strftime('%Y-%m', o.order_date) AS month,
               ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue
        FROM order_items oi
        JOIN orders o ON oi.order_id = o.order_id
        WHERE o.status = 'Completed'
        GROUP BY month
        ORDER BY month;
    """,
    "most_popular_products": """
        SELECT p.product_name, SUM(oi.quantity) AS total_sold
        FROM order_items oi
        JOIN products p ON oi.product_id = p.product_id
        JOIN orders o ON oi.order_id = o.order_id
        WHERE o.status = 'Completed'
        GROUP BY p.product_name
        ORDER BY total_sold DESC;
    """,
    "revenue_by_country": """
        SELECT c.country,
               ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue
        FROM order_items oi
        JOIN orders o ON oi.order_id = o.order_id
        JOIN customers c ON o.customer_id = c.customer_id
        WHERE o.status = 'Completed'
        GROUP BY c.country
        ORDER BY revenue DESC;
    """,
    "cancellation_rate": """
        SELECT ROUND(100.0 *
            (SELECT COUNT(*) FROM orders WHERE status = 'Cancelled') /
            (SELECT COUNT(*) FROM orders), 2) AS cancellation_rate_percent;
    """,
    "average_order_value": """
        SELECT ROUND(SUM(oi.quantity * oi.unit_price) / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
        FROM order_items oi
        JOIN orders o ON oi.order_id = o.order_id
        WHERE o.status = 'Completed';
    """,
    "revenue_by_category": """
        SELECT p.category,
               ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue
        FROM order_items oi
        JOIN products p ON oi.product_id = p.product_id
        JOIN orders o ON oi.order_id = o.order_id
        WHERE o.status = 'Completed'
        GROUP BY p.category
        ORDER BY revenue DESC;
    """,
    "top_customers": """
        SELECT c.first_name || ' ' || c.last_name AS customer,
               ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_spent
        FROM order_items oi
        JOIN orders o ON oi.order_id = o.order_id
        JOIN customers c ON o.customer_id = c.customer_id
        WHERE o.status = 'Completed'
        GROUP BY customer
        ORDER BY total_spent DESC
        LIMIT 10;
    """
}

# Using pandas for export in csv

for name, query in queries.items():
    df = pd.read_sql_query(query, conn)
    print(f"Exporting {name}...")
    df.to_csv(f'output/{name}.csv', index=False)

print("All datasets exported to 'output' folder.")

# Closing connection
conn.close()



