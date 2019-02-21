## Retrieve API Calls

> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/billing/aggreate/apiCall \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
  "fromDate":"04/01/2018",
  "toDate":"04/30/2018"
  }'
```
Retrieves the details Data usage about API calls

> Example Response

```json
{
    "data": {
    "??????? Request list of data"
    },
    "version": 3,
    "datetime": "2018-06-13T16:27:06.917Z",
    "policy": "public",
    "requestId": "b2997244-3579-4898-86ae-c0395c2db1ee",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/billing/aggreate/apiCall```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **fromDate** | *string* | Start date for list| **Yes** |
| **toDate** | *string* | End date for list| **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **url** | *string* | Your server URL for callback |
| **method** | *enum* | Method of callback (get-post-put..) |

