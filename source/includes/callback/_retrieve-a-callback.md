## Retrieve a callback

> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/private/v3/media/entity/callback?id=0a6bf245-1cce-494f-a193-b5a44aa05558 \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```
Retrieves the details of an existing callback.

> Example Response

```json
{
    "data": {
        "id": "0a6bf245-1cce-494f-a193-b5a44aa05558",
        "url": "https://callback-url.uiza.co",
        "headersData": null,
        "jsonData": {
          "text": "example callback"
        },
        "method": "POST",
        "status": 1,
        "createdAt": "2018-06-23T01:27:08.000Z",
        "updatedAt": "2018-06-23T01:27:08.000Z"
    },
    "version": 3,
    "datetime": "2018-06-23T01:28:47.240Z",
    "policy": "public",
    "requestId": "eaa569a4-e11d-4615-9def-d5c95a575cc2",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/callback```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Id of callback setting| **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of callback |
| **url** | *string* | Your server URL for callback |
| **method** | *enum* | Method of callback (get-post-put..) |
| **jsonData** | *object* | Data you want you add to your callback as JSON format |
| **headersData** | *object* | Parameter of header |

