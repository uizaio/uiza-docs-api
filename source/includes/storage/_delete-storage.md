## Remove storage


> Example Request

```shell
curl -X DELETE \
  https://#{workspace_api_domain}/api/public/v3/media/storage \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json'
  -d '{
       "id":"cd003123-7ec9-4f3a-9d7c-f2de93e83e49"
  }'
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

begin
  storage = Uiza::Storage.remove "your-storage-id"
  puts storage.id
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
res, status_code = Storage().delete("ddf09dd0-b7a8-4f29-92df-14dafb97b2aa")

print("id: ", res.id)
print("status_code", status_code)
```

```php
<?php
$category = Uiza\Storage::retrieve("key ... ");
$category->destroy();

// or

Uiza\Storage::delete("key ...");
?>
```

```java
import io.uiza.model.Storage;

Uiza.apiDomain = "<YOUR_WORKSPACE_API_DOMAIN>";
Uiza.apiKey = "<YOUR_API_KEY>";

try {
  JsonObject storage = Storage.remove("<storage-id>");
  System.out.println(storage.get("id"));
} catch (UizaException e) {
  System.out.println("Status is: " + e.getCode());
  System.out.println("Message is: " + e.getMessage());
  System.out.println("Description link is: " + e.getDescriptionLink());
} catch (Exception e) {

}
```

```javascript
uiza.storage.remove("03e6a059-c6d2-440c-a653-1e309918c792").then((res) => {
  //Identifier of storage has been removed
}).catch((err) => {
  //Error
});
```

```go
import (
  uiza "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/storage"
)

params := &uiza.StorageRemoveParams{ID: uiza.String("Your entity ID")}
response, _ := storage.Remove(params)
log.Printf("%s\n", response)
```

```csharp
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
  ApiKey = "your-ApiKey",
  ApiBase = "your-workspace-api-domain.uiza.co"
});

var result = UizaServices.Storage.Delete("Storage Id");
Console.WriteLine(string.Format("Remove Storage Id = {0} Success", result.Data.id));
```

Remove storage that added to Uiza

> Example Response

```json
{
    "data": {
        "id": "cd003123-7ec9-4f3a-9d7c-f2de93e83e49",
       },
    "version": 3,
    "datetime": "2018-06-19T03:18:14.862Z",
    "policy": "public",
    "requestId": "f5ebaa82-95de-4ce7-8089-21a919ba88cb",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="delete-button"> DELETE </span>
```https://#{workspace_api_domain}/api/public/v3/media/storage```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | Identifier of storage | **Yes** |



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of storage has been removed |
