## Publish entity to CDN


> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/media/entity/publish \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"16ab25d3-fd0f-4568-8aa0-0339bbfd674f"
}'
```

Publish entity to CDN, use for streaming

> Example Response

```json
{
    "data": {
        "id": "16ab25d3-fd0f-4568-8aa0-0339bbfd674f",
        "message": "Your entity started publish, check process status with this entity ID",
        "entityId": "42ceb1ab-18ef-4f2e-b076-14299756d182"
    },
    "version": 3,
    "datetime": "2018-06-22T19:30:58.896Z",
    "policy": "public",
    "requestId": "10a495a7-20f4-4efd-ac98-913889b56944",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/publish```

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
| **id** | *string* | Identifier of task publish |
| **message** | *string* | Notification about publish status |
| **entityId** | *string* | Identifier of entity |
