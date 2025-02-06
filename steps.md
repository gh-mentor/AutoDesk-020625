This is a guide to build a service written in C++ 17 that will hook into the Bing public search engine.

Step 1: Create a basic C++ project structure:
- Set up a C++ project using GNU C++ 17.
- Include necessary libraries such as libcurl.

Step 2: Implement the API:
- Create endpoints that support GET and POST protocols over HTTPS.
- Ensure all requests are logged.

Step 3: Refactor the code to adhere to the following SOLID principles
- Implement the Single Responsibility Principle.
- Implement the Open/Closed Principle.
- Implement the Liskov Substitution Principle.
- Implement the Interface Segregation Principle.
- Implement the Dependency Inversion Principle.

Step 4: Support indexing internal content:
- Implement functionality to index internal content.
- Ensure the indexing is efficient and scalable.

Step 5: Implement dispatch logic:
- Create logic to route queries to either Bing or an internal indexer, depending on the query type.

Step 6: Handle concurrency:
- Use threads to handle different tasks concurrently.
- Ensure the service can handle multiple requests simultaneously.

Step 7: Proper handling of errors and exceptions:
- Implement error and exception handling mechanisms.
- Ensure the service can recover from errors gracefully.

Step 8: Integrate and test the service:
- Ensure all components work together seamlessly.
- Use DocTest to Write unit tests to verify the functionality.
