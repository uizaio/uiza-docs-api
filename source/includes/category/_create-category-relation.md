## Create category relation


> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/media/entity/related/metadata \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "entityId":"16ab25d3-fd0f-4568-8aa0-0339bbfd674f",
    "metadataIds":["095778fa-7e42-45cc-8a0e-6118e540b61d","e00586b9-032a-46a3-af71-d275f01b03cf"]
}'
```

Add relation for entity and category

> Example Response

```json
{
    "data": [
        {
            "id": "5620ed3c-b725-4a9a-8ec1-ecc9df3e5aa6",
            "entityId": "16ab25d3-fd0f-4568-8aa0-0339bbfd674f",
            "metadataId": "095778fa-7e42-45cc-8a0e-6118e540b61d"
        },
        {
            "id": "47209e60-a99f-4c96-99fb-be4f858481b4",
            "entityId": "16ab25d3-fd0f-4568-8aa0-0339bbfd674f",
            "metadataId": "e00586b9-032a-46a3-af71-d275f01b03cf"
        }
    ],
    "metadata": {
        "total": 2,
        "result": 2,
        "page": 1,
        "limit": 20
    },
    "version": 3,
    "datetime": "2018-06-18T06:14:45.971Z",
    "policy": "public",
    "requestId": "137d4f7e-bdb8-4b9a-952f-a45eb4138382",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/related/metadata```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **entityId** | *string* | Identifier of entity | **Yes** |
| **metadataIds** | *string* | Identifier of category | **Yes** |



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of relation between entity and category has been created |
| **entityId** | *string* | Identifier of entity |
| **metadataIds** | *string* | Identifier of category |



