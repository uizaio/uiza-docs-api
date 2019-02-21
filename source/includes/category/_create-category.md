## Create category


> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/media/metadata \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "name":"Folder sample",
    "type":"folder",
    "description":"Folder description",
    "orderNumber":1,
    "icon":"https://exemple.com/icon.png"
}'
```

Create category for entity for easier management. Category use to group all the same entities into a group (like Folder/ playlist/or tag)

> Example Response

```json
{
    "data": {
        "id": "095778fa-7e42-45cc-8a0e-6118e540b61d"
    },
    "version": 3,
    "datetime": "2018-06-18T03:17:07.022Z",
    "policy": "public",
    "requestId": "244f6f8f-4fc5-4f20-a535-e8ea4e0cab0e",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/media/metadata```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **name** | *string* | Name of category | **Yes** |
| **type** | *enum* | Has 3 types of category [ **folder**, **playlist**, **tag** ] | **Yes** |
| **description** | *string* | Description for category |  |
| **orderNumber** | *integer* | Order number for category, lower number is higher order |  |
| **icon** | *string* | Small icon for each category |  |



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of category has been created|



