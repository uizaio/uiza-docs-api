## Delete category


> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/media/metadata \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Cache-Control: no-cache' \
  -d '{
    "id":"095778fa-7e42-45cc-8a0e-6118e540b61d"
}'
```

Delete category

> Example Response

```json
{
    "data": {
        "id": "095778fa-7e42-45cc-8a0e-6118e540b61d"
      },
    "version": 3,
    "datetime": "2018-06-16T18:56:10.713Z",
    "policy": "public",
    "requestId": "b80b7ad3-5529-4d5e-81f2-b4ca64285067",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
```https://#{workspace_api_domain}/api/public/v3/media/metadata```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Identifier of category | **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of category has been deleted |
