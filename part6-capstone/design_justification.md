## Storage Systems

For predicting patient readmission risk, I would use a data warehouse to store structured historical patient data such as treatments, diagnoses, and outcomes. This helps in running queries easily and also supports training machine learning models.

For natural language queries by doctors, I would use an NLP-based query system connected to the stored data. This allows doctors to ask questions in plain English and retrieve relevant patient information.

For monthly reporting, the same data warehouse can be used because it is optimized for analysis and can generate reports like bed occupancy and department-wise costs efficiently.

For real-time ICU vitals, I would use a data lake along with a streaming system to collect and store high-frequency data from monitoring devices. The data lake can handle large volumes of continuous data and different data formats.

Additionally, data from the data lake can be processed and moved to the data warehouse for further analysis and reporting.

## OLTP vs OLAP Boundary

The OLTP system includes real-time hospital systems such as patient records, billing, and ICU monitoring, where data is frequently updated.

The OLAP system starts when this data is moved to analytical storage like a data warehouse for reporting and analysis. Before storing, the data is cleaned and organized.

So, the boundary between OLTP and OLAP is at the stage where data moves from operational systems to analytical systems.

## Trade-offs

One important trade-off in this design is between real-time processing and system complexity. Handling real-time ICU data along with reporting and analysis makes the system more complex and costly.

To reduce this, only important real-time data can be processed immediately, while other data can be collected and processed in batches later.

This approach helps in balancing performance, cost, and system efficiency while still meeting all the requirements.
