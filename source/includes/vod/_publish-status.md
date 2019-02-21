## Get status publish


> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/media/entity/publish/status?id=16ab25d3-fd0f-4568-8aa0-0339bbfd674f \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```

Publish entity to CDN, use for streaming

> Example Response

```json
{
    "data": {
        "progress": 0,
        "status": "processing"
    },
    "version": 3,
    "datetime": "2018-06-22T19:32:39.986Z",
    "policy": "public",
    "requestId": "70d462bd-4a2d-4b38-8bbe-3578e91ead08",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/publish/status```

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
| **progress** | *number* | Progress of task publish, will be success when reach 100 |
| **status** | *string* | Status of task publish (processing, success, error) |
