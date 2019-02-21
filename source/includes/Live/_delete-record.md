## Delete a record file

> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/live/entity/dvr \
  -H 'Authorization: uap-bfd2314eac8d463395a304d3141d172b-6a641000' \
  -d '{
	"id":"009596b1-f751-4102-86f7-7290a9f3f0cf"
}'
```

Delete a recorded file

> Example Response

```json
{
     "data": {
         "id": "009596b1-f751-4102-86f7-7290a9f3f0cf"
     },
     "version": 3,
     "datetime": "2018-12-20T04:16:52.893Z",
     "policy": "public",
     "requestId": "f3f1b857-e6ca-4419-b610-947e62583481",
     "serviceName": "api",
     "message": "OK",
     "code": 200,
     "type": "SUCCESS"
 }
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
```https://#{workspace_api_domain}/api/public/v3/live/entity/dvr```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |


**Body Request**


| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of record (get from [list record](#list-record)) |

**Response Parameters**

| Parameter | Type | Description | 
| ------------- | ------------- | ------------- | 
| **id** | **string** | Identifier of record has been deleted | 
