## Retrieve category list


> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/media/metadata \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

begin
  categories = Uiza::Category.list
  puts categories.first.id
  puts categories.first.name
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
res, status_code = Category().list()

print("status_code", status_code)
```

```php
<?php
$listCategory = Uiza\Category::all();

// or

$listCategory = Uiza\Category::list();
?>
```

```java
import io.uiza.model.Category;

Uiza.apiDomain = "<YOUR_WORKSPACE_API_DOMAIN>";
Uiza.apiKey = "<YOUR_API_KEY>";

try {
  JsonArray categories = Category.list();
  JsonObject category = categories.get(0).getAsJsonObject();
  System.out.println(category.get("id"));
} catch (UizaException e) {
  System.out.println("Status is: " + e.getStatusCode());
  System.out.println("Message is: " + e.getMessage());
  System.out.println("Description link is: " + e.getDescriptionLink());
} catch (Exception e) {

}
```

```javascript
uiza.category.list()
  .then((res) => {
    //Identifier of category list
  }).catch((err) => {
    //Error
  });
```

```go
response, _ := category.List()
for _, v := range response {
  log.Printf("%v\n", v)
}
```

```csharp
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
  ApiKey = "your-ApiKey",
  ApiBase = "your-workspace-api-domain.uiza.co"
});

var listResult = UizaServices.Category.List(new BaseParameter());
Console.WriteLine(string.Format("Success Get List Category, total record {0}", listResult.MetaData.result));
```

Get all category

> Example Response

```json
{
    "data": [
        {
            "id": "f932aa79-852a-41f7-9adc-19935034f944",
            "name": "Playlist sample",
            "description": "Playlist desciption",
            "slug": "playlist-sample",
            "type": "playlist",
            "orderNumber": 3,
            "icon": "/example.com/image002.png",
            "status": 1,
            "createdAt": "2018-06-18T04:29:05.000Z",
            "updatedAt": "2018-06-18T04:29:05.000Z"
        },
        {
            "id": "ab54db88-0c8c-4928-b1be-1e7120ad2c39",
            "name": "Folder sample",
            "description": "Folder's description",
            "slug": "folder-sample",
            "type": "folder",
            "orderNumber": 1,
            "icon": "/example.com/icon.png",
            "status": 1,
            "createdAt": "2018-06-18T03:17:07.000Z",
            "updatedAt": "2018-06-18T03:17:07.000Z"
        }
    ],
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
```https://#{workspace_api_domain}/api/public/v3/media/metadata```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of category |
| **name** | *string* | Name of category |
| **type** | *string* | Description for category |
| **description** | *string* | Has 3 types of category [ **folder**, **playlist**, **tag** ] |
| **orderNumber** | *string* | Order number for category, lower number is higher order |
| **icon** | *string* | Small icon for each category |
| **status** | *number* | Status of category |
| **createdAt** | *datetime* | Time created of category |
| **updatedAt** | *datetime* | Last edited time of category |
