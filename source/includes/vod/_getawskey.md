## Get AWS upload key


> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/admin/app/config/aws \
  -H 'Authorization: uap-91d6****123244f4ad74a5195f4c-c0522414' \
  -H 'Cache-Control: no-cache' \
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

begin
  response = Uiza::Entity.get_aws_upload_key
  puts response.bucket_name
  puts response.region_name
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
res, status_code = Entity().get_aws_upload_key()

print("status_code", status_code)
```

```php
<?php
Uiza\Entity::getAWSUploadKey();
?>
```

```java
import io.uiza.model.Entity;

Uiza.apiDomain = "<YOUR_WORKSPACE_API_DOMAIN>";
Uiza.apiKey = "<YOUR_API_KEY>";

try {
  JsonObject response = Entity.getAwsUploadKey();
  System.out.println(response.get("region_name"));
} catch (UizaException e) {
  System.out.println("Status is: " + e.getStatusCode());
  System.out.println("Message is: " + e.getMessage());
  System.out.println("Description link is: " + e.getDescriptionLink());
} catch (Exception e) {

}
```

```javascript
uiza.entity.get_aws_upload_key()
.then((res) => {
  // The response body will return you the paramaters that used for input to aws sdk , then upload your files to Uiza’s storage
}).catch((err) => {
  //Error
});
```

```go
import (
  uiza "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/entity"
)

response, _ := entity.GetAWSUploadKey()
log.Printf("%s\n", response)
```

```csharp
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
	ApiKey = "your-ApiKey",
	ApiBase = "your-workspace-api-domain.uiza.co"
});

var result =  UizaServices.Entity.GetEntityAWSUploadKey();
Console.WriteLine(string.Format("Get AWS Upload Key Success : temp_access_id = {0} ", result.Data.temp_access_id));
```

This API will be return the bucket temporary upload storage & key for upload, so that you can push your file to Uiza’s storage and get the link for URL upload & create entity

> Example Response

```json
{
    "data": {
        "temp_expire_at": 1533658598,
        "temp_access_id": "ASIAV*******GPHO2DTZ",
        "bucket_name": "uiza****-storage-ap-southeast-1-01/upload-temp/****ff4ad74a5195f4c/",
        "temp_session_token": "FQoGZXIvYXdzEKb//////////wEaDM3rrospIPdBVVULUiKQBHd6H6CNOlRc+xBXDa3Nw8gEymmC/XjDYjIScgx9wJ4QBWwQPwizxLn4AdoLgnYAXVfuGZgOVB6KLHlUZ09yE1IZtN1J3zeVnOaaLnCRSg2lWvwGos6pcLnvzUEGC9FevGfWKEjIQZO6z57BsW/k+1edwNUJpH7FNzmzF5/zid3+wDdzEd2mP4Y0OVdAd6l0oemndXsOQ0wQ2jYre2DXiQ+JRFOE696vpEUqQMm8dDStctLIKPG5WAeKguue2eorTF5fSc43qu/tzecaKGL2UMQVfIAu5wfT6S4uAxOpo0jLuwxqqlEbat6wIlpWCyESpFEoja7qpVnqG2cyAToSnvus2m82cT6WBFyhc6wmetYJDiTAZkOrMYm8yhdqwlb7jd/7p9WVjZOaY8BPB4eZ/tFWrKAZXenX0u5nFumwa2Pvv6TZQqORqLvoybkJnWAZtziK/Xlj+7GxKGep7l6X7/T/1wEIvlORBLLZ3qMFx6cEvhVAx8Zo+5MMHlUmgSLaRAL6kn9F8X6n2nvKGX3T36KXMEBeCVKWEhCUXFbJxz3otBUjaCzpYFuH5aM0DbotqrkNNoOd9oilH0d5oH5llH6lY6Qp1ZjzIHdMV/DCWmMeDqXgNcPakyX5d/zf4D+0LadhikLWctYQkJhoVCqkBCsc+glzk79tEER213nfjPr2i6+qQpfGYeoz8zcdaINRaiimuqTbBQ==",
        "region_name": "ap-southeast-1",
        "temp_access_secret": "dp****cx2mE2lZxsSq7kV++vWSL6RNatAhbqc"
    },
    "version": 3,
    "datetime": "2018-08-07T04:16:39.138Z",
    "policy": "public",
    "requestId": "5c7fd975-c5f1-4980-b74f-bea1bffffba8",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/admin/app/config/aws```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **temp_expire_at** | *timestamp* | Time that this token will be expired (you must recall this API if token expired) |
| **temp_access_id** | *string* | Access keyId - used to input in aws SDK |
| **bucket_name** | *string* | Bucket destination -  used to input in aws SDK |
| **temp_session_token** | *string* | Temporary key -  used to input in aws SDK |
| **region_name** | *string* | Region name -  used to input in aws SDK |
| **temp_access_secret** | *string* | Temporary Secret key -  used to input in aws SDK |

The response body will return you the paramaters that used for input to aws sdk , then upload your files to Uiza’s storage

You can read the aws sdk guildine here & start your upload
<br>
- For Nodejs : <a href=“https://aws.amazon.com/vi/sdk-for-node-js/“>https://aws.amazon.com/vi/sdk-for-node-js/</a>
<br>
- For PHP : <a href=“https://aws.amazon.com/vi/sdk-for-php/“>https://aws.amazon.com/vi/sdk-for-php/</a>
<br>
- For Python : <a href=“https://aws.amazon.com/vi/sdk-for-python/“>https://aws.amazon.com/vi/sdk-for-python/</a>
<br>
- For Ruby : <a href=“https://aws.amazon.com/vi/sdk-for-ruby/“>https://aws.amazon.com/vi/sdk-for-ruby/</a>
