## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The raw dataset contained multiple date formats such as DD-MM-YYYY, MM/DD/YYYY, and text-based formats which caused errors while loading into the warehouse.
Resolution: All dates were converted into a single standard format (YYYY-MM-DD) before inserting into the dim_date table.

### Decision 2 — Handling Inconsistent Category Names
Problem: Product categories in the raw data had inconsistent casing such as electronics, Electronics, ELECTRONICS, and furniture.
Resolution: All category values were standardized into proper format (Electronics, Furniture, Stationery) before loading into the dim_product table.

### Decision 3 — Handling NULL Values
Problem: Some rows in the raw data contained NULL values for quantity and price, which would affect revenue calculations.
Resolution: Rows with missing numeric values were cleaned by either replacing with valid values from the dataset or removing invalid rows before loading into the fact_sales table.
