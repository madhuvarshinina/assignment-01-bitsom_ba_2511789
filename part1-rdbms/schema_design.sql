-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(20) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    sales_rep_id VARCHAR(20),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sample Inserts (structure-based, not exact dataset)

INSERT INTO Customers VALUES
('CUST001', 'Customer A', 'Mumbai'),
('CUST002', 'Customer B', 'Delhi'),
('CUST003', 'Customer C', 'Chennai'),
('CUST004', 'Customer D', 'Mumbai'),
('CUST005', 'Customer E', 'Bangalore');

INSERT INTO Products VALUES
('PROD001', 'Product A', 1000),
('PROD002', 'Product B', 2000),
('PROD003', 'Product C', 1500),
('PROD004', 'Product D', 500),
('PROD005', 'Product E', 2500);

INSERT INTO SalesReps VALUES
('SR001', 'Rep A'),
('SR002', 'Rep B'),
('SR003', 'Rep C'),
('SR004', 'Rep D'),
('SR005', 'Rep E');

INSERT INTO Orders VALUES
('ORD001', 'CUST001', 'SR001', '2023-01-01'),
('ORD002', 'CUST002', 'SR002', '2024-07-02'),
('ORD003', 'CUST003', 'SR003', '2023-01-20'),
('ORD004', 'CUST004', 'SR004', '2022-03-11'),
('ORD005', 'CUST005', 'SR005', '2021-09-05');

INSERT INTO OrderItems VALUES
(1, 'ORD001', 'PROD001', 2),
(2, 'ORD002', 'PROD002', 1),
(3, 'ORD003', 'PROD003', 3),
(4, 'ORD004', 'PROD004', 4),
(5, 'ORD005', 'PROD005', 1);
