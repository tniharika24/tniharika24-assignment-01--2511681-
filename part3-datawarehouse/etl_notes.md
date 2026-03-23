ETL Decisions

Decision 1 — Date Format Standardization
Problem: Dates were in DD-MM-YYYY format.
Resolution: Converted all dates into YYYY-MM-DD format for consistency and SQL compatibility.

Decision 2 — Category Normalization
Problem: Categories had inconsistent casing (e.g., electronics, Electronics).
Resolution: Standardized all categories into proper case (Electronics, Clothing, Grocery).

Decision 3 — Handling Missing Store City
Problem: Some rows had NULL or empty store_city values.
Resolution: Replaced missing values with 'Unknown' to avoid NULL issues in analysis.