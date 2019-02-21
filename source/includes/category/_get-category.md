## Retrieve category


> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/media/metadata?id=095778fa-7e42-45cc-8a0e-6118e540b61d \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```

Get detail of category

> Example Response

```json
{
    "data": {
        "id": "f932aa79-852a-41f7-9adc-19935034f944",
        "name": "Playlist sample",
        "description": "Playlist description",
        "slug": "playlist-sample",
        "type": "playlist",
        "orderNumber": 3,
        "icon": "https:///example.com/image002.png",
        "status": 1,
        "createdAt": "2018-06-18T04:29:05.000Z",
        "updatedAt": "2018-06-18T04:29:05.000Z"
    },
    "metadata": {
        "total": 2,
        "result": 2,
        "page": 1,
        "limit": 20
    },
    "version": 3,
    "datetime": "2018-06-18T04:30:26.394Z",
    "policy": "public",
    "requestId": "992ecf2d-3ece-44a2-880f-c60d4e6597fa",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/media/metadata?id=095778fa-7e42-45cc-8a0e-6118e540b61d```

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
| **id** | *string* | Identifier of category |
| **name** | *string* | Name of category |
| **type** | *string* | Description for category |
| **description** | *string* | Has 3 types of category [ **folder**, **playlist**, **tag** ] |
| **orderNumber** | *string* | Order number for category, lower number is higher order |
| **icon** | *string* | Small icon for each category|
| **status** | *number* | Status of category |
| **createdAt** | *datetime* | Time created category |
| **updatedAt** | *datetime* | Last edited time of category |
