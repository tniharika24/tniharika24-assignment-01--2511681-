-- Customers Table
CREATE TABLE Customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT,
    customer_email TEXT,
    customer_city TEXT
);

-- Products Table
CREATE TABLE Products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    unit_price INTEGER
);

-- Sales Representatives Table
CREATE TABLE Sales_Reps (
    sales_rep_id TEXT PRIMARY KEY,
    sales_rep_name TEXT,
    sales_rep_email TEXT,
    office_address TEXT
);

-- Orders Table
CREATE TABLE Orders (
    order_id TEXT PRIMARY KEY,
    customer_id TEXT,
    order_date DATE,
    sales_rep_id TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE Order_Items (
    order_id TEXT,
    product_id TEXT,
    quantity INTEGER,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);