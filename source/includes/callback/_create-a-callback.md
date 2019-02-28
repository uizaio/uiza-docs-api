## Create a callback

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/media/entity/callback \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
    "url":"https://callback-url.uiza.co",
    "method":"POST"
  }'
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

params = {
  url: "https://callback-url.uiza.co",
  method: "POST"
}

begin
  callback = Uiza::Callback.create params
  puts callback.id
  puts callback.url
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
from uiza.api_resources.callback import Callback

callback_data = {
  "url":"https://callback-url-python.uiza.co",
  "method":"GET"
}

res, status_code = Callback().create(**callback_data)

print("id: ", res.id)
print("status_code", status_code)
```

```php
<?php
$params = [
  "url" => "https://callback-url.uiza.co",
  "method" => "POST"
];
Uiza\Callback::create($params);
?>
```

```java
import io.uiza.model.Callback;

Uiza.apiDomain = "<YOUR_WORKSPACE_API_DOMAIN>";
Uiza.apiKey = "<YOUR_API_KEY>";

Map<String, Object> params = new HashMap<>();
params.put("url", "<your-server-callback>");
params.put("method", Method.POST);

try {
  JsonObject callback = Callback.create(params);
  System.out.println(callback.get("id"));
} catch (UizaException e) {
  System.out.println("Status is: " + e.getStatusCode());
  System.out.println("Message is: " + e.getMessage());
  System.out.println("Description link is: " + e.getDescriptionLink());
} catch (Exception e) {

}
```

```javascript
const uiza = require('../lib/uiza')('your-workspace-api-domain.uiza.co', 'your-authorization');

uiza.callback.create({
  'url': 'https://callback-url.uiza.co',
  'method': 'POST'
}).then((res) => {
  //Identifier of callback has been created
}).catch((err) => {
  //Error
});
```

```go
import (
  uiza "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/callback"
)

callbackMethodPOST := uiza.HTTPMethodPost
params := &uiza.CallbackCreateParams{
  Url:    uiza.String("https://callback-url.uiza.co"),
  Method: &callbackMethodPOST,
}

response, _ := callback.Create(params)
log.Printf("%s\n", response)
```

```csharp
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
  ApiKey = "your-ApiKey",
  ApiBase = "your-workspace-api-domain.uiza.co"
});

var createResult = UizaServices.Callback.Create(new CreateCallbackParameter()
{
  Url = "https://callback-url.uiza.co",
  Method = CallbackMethodTypes.Post,
});

Console.WriteLine(string.Format("Create New Callback Id = {0} Success", createResult.Data.id));
```

This API will allow you setup a callback to your server when an entity is completed for upload or public

> Example Response

```json
{
    "data": {
        "id": "8b83886e-9cc3-4eab-9258-ebb16c0c73de"
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

<span class="post-button"> POST </span>
```https://#{workspace_api_domain}/api/public/v3/media/entity/callback```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **url** | *string* | Your server URL for callback | **Yes** |
| **method** | *enum* | Method of callback (get-post-put..) | **Yes** |
| **jsonData** | *object* | Extra data you want to attach in callback response |  |
| **headersData** | *object* | Add parameter to headers |  |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Id of callback setting |
