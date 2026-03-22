-- =========================
-- DIMENSION TABLES
-- =========================

CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INT,
    month_name VARCHAR(20)
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- =========================
-- INSERT CLEANED DATA
-- =========================

-- Cleaned DATE data (standard YYYY-MM-DD format)
INSERT INTO dim_date VALUES
(1,'2024-01-01',1,1,2024,'January'),
(2,'2024-01-05',5,1,2024,'January'),
(3,'2024-01-10',10,1,2024,'January'),
(4,'2024-02-02',2,2,2024,'February'),
(5,'2024-02-08',8,2,2024,'February'),
(6,'2024-02-15',15,2,2024,'February'),
(7,'2024-03-01',1,3,2024,'March'),
(8,'2024-03-05',5,3,2024,'March'),
(9,'2024-03-10',10,3,2024,'March'),
(10,'2024-03-20',20,3,2024,'March');

-- Cleaned STORE data (consistent naming)
INSERT INTO dim_store VALUES
(1,'Chennai Central Store','Chennai','Tamil Nadu'),
(2,'Bangalore City Store','Bangalore','Karnataka'),
(3,'Hyderabad Mall Store','Hyderabad','Telangana');

-- Cleaned PRODUCT data (fixed category casing)
INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'Mobile Phone','Electronics'),
(3,'Office Chair','Furniture'),
(4,'Table','Furniture'),
(5,'Notebook','Stationery');

-- =========================
-- FACT TABLE DATA (10 ROWS)
-- =========================

INSERT INTO fact_sales VALUES
(1,1,1,1,2,50000,100000),
(2,2,1,2,3,15000,45000),
(3,3,2,3,4,4000,16000),
(4,4,2,1,1,52000,52000),
(5,5,3,2,2,14000,28000),
(6,6,3,4,3,6000,18000),
(7,7,1,5,10,50,500),
(8,8,2,3,2,4200,8400),
(9,9,1,1,1,51000,51000),
(10,10,3,2,2,14500,29000);
