# Errors Code

Uiza uses conventional HTTP response codes to indicate the success or failure of an API request. In general: Codes in the `2xx` range indicate success. Codes in the `4xx` range indicate an error that failed given the information provided (e.g., a required parameter was omitted, a charge failed, etc.). Codes in the `5xx` range indicate an error with Uiza's servers.

**Errors list**

| Error Code                               | Detail                                                             |
|------------------------------------|--------------------------------------------------------------------------|
| 200 - OK                           | Everything worked as expected.                                           |
| 400 - Bad Request                  | The request was unacceptable, often due to missing a required parameter. |
| 401 - Unauthorized                 | No valid API key provided.                                               |
| 404 - Not Found                    | The requested resource doesn't exist.                                    |
| 422 - Unprocessable                    | The syntax of the request is correct (often cause of wrong parameter)|
| 500 - Internal Server Error        | We had a problem with our server. Try again later.                       |
| 503 - Service Unavailable          | The server is overloaded or down for maintenance.                        |

