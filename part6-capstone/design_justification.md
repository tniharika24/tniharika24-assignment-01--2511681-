## Storage Systems

For this architecture, multiple storage systems are used to satisfy different requirements.

An operational database (OLTP) is used to store real-time patient records such as admissions, treatments, and vitals. This ensures fast read/write operations required for hospital workflows.

A data lake is used to store raw data from multiple sources including electronic health records, ICU device streams, and doctor notes. This allows the system to handle structured and unstructured data at scale without strict schema requirements.

A data warehouse is used for analytical purposes such as generating monthly reports on bed occupancy and department costs. It stores cleaned and structured data optimized for aggregation and reporting queries.

A vector database is used to store embeddings of patient records and doctor notes. This enables semantic search, allowing doctors to query patient history using natural language instead of exact keywords.

## OLTP vs OLAP Boundary

The OLTP system handles transactional operations such as patient admissions, updates to medical records, and real-time ICU data ingestion. It is optimized for fast and consistent updates.

The OLAP system begins once data is extracted from the OLTP system and processed through ETL pipelines into the data warehouse. At this stage, data is transformed, cleaned, and aggregated for analytical queries.

Thus, the boundary lies at the ETL layer, where transactional data is moved from operational systems into analytical systems for reporting and machine learning purposes.

## Trade-offs

One significant trade-off in this architecture is the complexity introduced by using multiple storage systems. Managing a data lake, data warehouse, vector database, and streaming system increases operational overhead and requires careful coordination.

To mitigate this, a unified data orchestration layer can be used to manage data pipelines and ensure consistency across systems. Additionally, adopting a data lakehouse approach could reduce complexity by combining the benefits of both data lakes and warehouses.