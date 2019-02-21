## Convert into VOD

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/live/entity/dvr/convert-to-vod \
  -H 'Authorization: uap-bfd2314eac8d463395a304d3141d172b-6a641000' \
  -H 'Content-Type: application/json' \
  -d '{
	"id":"3fec45e9-932b-4efe-b97f-dc3053acaa05"
}'
```

Convert recorded file into VOD entity. After converted, your file can be stream via Uiza's CDN.

> Example Response

```json
{
    "data": {
        "id": "03739912-d781-4d5a-aaf8-7262691a5d0c"
    },
    "version": 3,
    "datetime": "2018-12-20T05:14:02.488Z",
    "policy": "public",
    "requestId": "438daa50-696f-4152-8e6d-36f0ba7ed66f",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/live/entity/dvr/convert-to-vod```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |


**Body Request**


| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of record (get from [list record](#list-record)) |

**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of entity has been converted |
