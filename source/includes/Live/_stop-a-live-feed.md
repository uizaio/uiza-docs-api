## Stop a live feed

> Example Request

```shell
curl -X PUT \
  https://#{workspace_api_domain}/api/public/v3/live/entity/feed \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id": "d3a7b3e7-1b0b-4d52-b804-aa000a0bd711"
}'
```

Stop live event

> Example Response

```json
{
    "data": {
        "id": "d3a7b3e7-1b0b-4d52-b804-aa000a0bd711"
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

<span class="put-button"> PUT </span>
```https://#{workspace_api_domain}/api/public/v3/live/entity/feed```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Identifier of event | **Yes** |



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **entityId** | *string* | Identifier of event|
| **message** | *string* | Progress stop feed |


