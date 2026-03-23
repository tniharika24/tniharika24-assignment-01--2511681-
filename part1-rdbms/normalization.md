Anomaly Analysis

1. Insert Anomaly

In this dataset, we cannot add a new product unless there is an order.

For example, a new product like Tablet cannot be inserted without creating an order.

Problem: Product details are dependent on order data.


2. Update Anomaly

Sales rep Deepak Joshi appears multiple times with slightly different office addresses:

- Mumbai HQ, Nariman Point, Mumbai - 400021  
- Mumbai HQ, Nariman Pt, Mumbai - 400021  

Problem: Updating address requires changes in multiple rows, leading to inconsistency.


3. Delete Anomaly

If an order containing a unique product is deleted, all information about that product is lost.

Example: Deleting an order for Webcam may remove product data completely.

Problem: Loss of important data.