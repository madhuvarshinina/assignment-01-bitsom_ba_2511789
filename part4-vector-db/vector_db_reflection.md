## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts using natural language queries. Keyword search relies on exact word matching, which means it may fail to retrieve relevant sections if different terminology or phrasing is used. For example, a query like "termination clauses" might miss sections that use alternative wording such as "contract cancellation terms."

Vector databases address this limitation by enabling semantic search. Instead of matching exact words, they convert both documents and queries into vector embeddings that capture the meaning of the text. This allows the system to identify relevant sections even when the wording differs, improving accuracy and user experience.

In this system, the contracts would be broken into smaller chunks and converted into embeddings. When a lawyer enters a query, it is also converted into an embedding, and the vector database retrieves the most semantically similar chunks. This enables fast and meaningful search across large documents.

Therefore, a vector database plays a critical role in enabling intelligent, context-aware search that goes beyond simple keyword matching.
