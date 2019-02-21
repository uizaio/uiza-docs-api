## Delete a callback

> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/media/entity/callback \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"c54f115f-87b4-420c-9e52-e8dffe32e022"
  }'
```
Delete an existing callback.

> Example Response

```json
{
    "data": {
        "id": "c54f115f-87b4-420c-9e52-e8dffe32e022"
    },
    "version": 3,
    "datetime": "2018-06-23T01:30:46.699Z",
    "policy": "public",
    "requestId": "f0d39d74-376f-4091-9da7-dc9a95f854fc",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
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
| **id** | *string* | Id of callback setting|

