## Create a callback

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/media/entity/callback \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
    "url":"https://callback-url.uiza.co",
    "method":"POST"
  }'
```

This API will allow you setup a callback to your server when an entity is completed for upload or public

> Example Response

```json
{
    "data": {
        "id": "8b83886e-9cc3-4eab-9258-ebb16c0c73de"
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

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/callback```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **url** | *string* | Your server URL for callback | **Yes** |
| **method** | *enum* | Method of callback (get-post-put..) | **Yes** |
| **jsonData** | *object* | Extra data you want to attach in callback response |  |
| **headersData** | *object* | Add parameter to headers |  |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Id of callback setting |


