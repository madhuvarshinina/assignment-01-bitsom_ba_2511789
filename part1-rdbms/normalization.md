## Anomaly Analysis

### Insert Anomaly
In the current flat dataset, a new product cannot be added unless it is associated with an order. For example, product_id and product_name are tied to order_id, so inserting a new product without an order is not possible.

### Update Anomaly
Customer information such as city is repeated across multiple rows. For example, if a customer_id appears in multiple rows, updating the customer_city in one row but not others leads to inconsistent data.

### Delete Anomaly
If an order row is deleted, all associated product and customer information for that row is also lost. For example, deleting the only occurrence of a product_id removes its product_name and unit_price from the dataset.

---

## Normalization Justification

Keeping all data in a single flat table leads to redundancy and data inconsistency. In the dataset, customer details such as customer_name and customer_city are repeated for every order, which increases storage and introduces update anomalies. If a customer’s city changes, it must be updated in multiple rows, increasing the risk of inconsistent data.

Similarly, product information such as product_name and unit_price is duplicated across rows. This creates insert and delete anomalies, where new products cannot be added independently, and deleting an order may remove all information about a product.

By normalizing the data into separate tables such as Customers, Products, Orders, Sales Representatives, and OrderItems, redundancy is reduced and data integrity is improved. Relationships are maintained using foreign keys, ensuring consistency and scalability. Therefore, normalization is essential for maintaining reliable and efficient data systems.
