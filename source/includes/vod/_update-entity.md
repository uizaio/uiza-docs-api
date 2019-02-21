## Update an entity


> Example Request

```shell
curl -X PUT \
  https://#{workspace_api_domain}/api/public/v3/media/entity \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id": "dd934a87-3342-41fa-8cdf-6381b6d92105",
    "name": "Title edited",
    "description": "Description edited",
    "shortDescription":"001 Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "poster":"/example.com/picture001a",
    "thumbnail":"/example.com/picture001a",
    "extendMetadata":{
        "movie_category":"action",
        "imdb_score":8.8,
        "published_year":"2018"
	}
}'
```

Update entity's information.

> Example Response

```json
{
    "data": {
        "id": "dd934a87-3342-41fa-8cdf-6381b6d92105"
    },
    "version": 3,
    "datetime": "2018-06-15T18:52:45.755Z",
    "policy": "public",
    "requestId": "0201d964-2e57-4577-9d2c-692ec8b02f88",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="put-button"> PUT </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Identifier of entity | **Yes** |
| **name** | *string* | Name of entity | |
| **description** | *text* | Full description for entity (without max-length) |  |
| **shortDescription** | *text* | Short description of entity (250 characters) |  |
| **poster** | *string* | Poster of entity |  |
| **thumbnail** | *string* | Thumbnail of entity |  |
| **extendMetadata** | *object* | Additional information of entity  <span onclick="this.classList.toggle('inactive')" class = "tool-tip inactive"><br><i> You can input additional information of entity by using [ **key** : **value** ] format. All information will show in entity detail.</i></span>|  |





**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of entity has been updated|



