--Star Schema
-- Date Dimension
CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    full_date DATE,
    month INTEGER,
    year INTEGER
);

-- Store Dimension
CREATE TABLE dim_store (
    store_id INTEGER PRIMARY KEY AUTOINCREMENT,
    store_name TEXT,
    store_city TEXT
);

-- Product Dimension
CREATE TABLE dim_product (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT,
    category TEXT
);


--fact Table
CREATE TABLE fact_sales (
    fact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_id INTEGER,
    store_id INTEGER,
    product_id INTEGER,
    units_sold INTEGER,
    revenue REAL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);


--Insert Clean data

--Insert into dim_date
INSERT INTO dim_date VALUES
(1, '2023-08-29', 8, 2023),
(2, '2023-12-12', 12, 2023),
(3, '2023-02-05', 2, 2023),
(4, '2023-02-20', 2, 2023),
(5, '2023-01-15', 1, 2023);

--Insert into dim_store
INSERT INTO dim_store (store_name, store_city) VALUES
('Chennai Anna', 'Chennai'),
('Delhi South', 'Delhi'),
('Bangalore MG', 'Bangalore'),
('Mumbai Central', 'Mumbai'),
('Pune FC Road', 'Pune'),
('Mumbai Central', 'Unknown');

--Insert into dim_product
INSERT INTO dim_product (product_name, category) VALUES
('Speaker', 'Electronics'),
('Tablet', 'Electronics'),
('Phone', 'Electronics'),
('Smartwatch', 'Electronics'),
('Jeans', 'Clothing'),
('Atta 10kg', 'Grocery');


--Insert into fact_sales
INSERT INTO fact_sales (date_id, store_id, product_id, units_sold, revenue) VALUES
(1, 1, 1, 3, 147788.34),
(2, 1, 2, 11, 255487.32),
(3, 1, 3, 20, 974067.80),
(4, 2, 2, 14, 325165.68),
(5, 1, 4, 10, 588510.10),
(1, 3, 6, 12, 629568.00),
(3, 5, 4, 6, 353106.06),
(2, 5, 5, 16, 37079.52),
(2, 3, 6, 9, 247229.91),
(1, 3, 4, 3, 176553.03);

