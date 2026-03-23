## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts. Keyword search relies on exact word matches, which means it may fail when the query uses different wording than the document. For example, a lawyer searching for "termination clauses" might miss relevant sections labeled as "contract ending conditions" or similar variations.

Vector databases solve this problem by using embeddings, which capture the semantic meaning of text rather than just exact words. In this system, each section of the 500-page contract would be converted into vector embeddings using a model. When a user asks a question in plain English, the query is also converted into an embedding.

The vector database then performs similarity search to find the most relevant sections based on meaning, not just keywords. This allows the system to return accurate results even when the wording differs.

Thus, a vector database plays a crucial role by enabling semantic search, improving accuracy, and making it easier for lawyers to quickly find relevant information in large documents.