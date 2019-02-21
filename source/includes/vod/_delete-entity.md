## Delete an entity


> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/media/entity \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id": "16ab25d3-fd0f-4568-8aa0-0339bbfd674f",
}'
```

Delete entity

> Example Response

```json
{
    "data": {
        "id": "16ab25d3-fd0f-4568-8aa0-0339bbfd674f"
      },
    "version": 3,
    "datetime": "2018-06-16T18:56:10.713Z",
    "policy": "public",
    "requestId": "1ca5329c-08a7-4301-bddf-71f466363ff2",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Identifier of entity | **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of entity has been deleted |
