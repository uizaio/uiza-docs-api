## Update password

Update password allows Admin or User update their current password.

> Example Request

```shell
curl -X PUT \
  https://#{workspace_api_domain}/api/public/v3/admin/user/changepassword \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"2c98b4d5-7d7f-4a0f-9258-5689f90fd28c",
    "oldPassword":"FMpsr<4[dGPu?B#u",
    "newPassword":"S57Eb{:aMZhW=)G$"
}'
```

```ruby
require "uiza"

Uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
Uiza.authorization = "your-authorization"

params = {
  id: "your-user-id",
  oldPassword: "FMpsr<4[dGPu?B#u",
  newPassword: "S57Eb{:aMZhW=)G$"
}

begin
  response = Uiza::User.change_password params
  puts response.result
rescue Uiza::Error::UizaError => e
  puts "description_link: #{e.description_link}"
  puts "code: #{e.code}"
  puts "message: #{e.message}"
rescue StandardError => e
  puts "message: #{e.message}"
end
```

```python
import uiza

from uiza.api_resources.user import User
from uiza.exceptions import ServerException

uiza.workspace_api_domain = "your-workspace-api-domain.uiza.co"
uiza.authorization = "your-authorization"

try:
  res, status_code = User().change_password(
    id="your-user-id",
    old_password="S57Eb{:aMZhW=)G$",
    new_password="FMpsr<4[dGPu?B#u"
  )

  print("res ", res)
except ServerException as e:
  raise e
except Exception as e:
  raise e
```

```php
<?
require __DIR__."/../vendor/autoload.php";

Uiza\Base::setWorkspaceApiDomain('your-workspace-api-domain.uiza.co');
Uiza\Base::setApiKey('your-api-key');

$params = [
  "id" => "your-user-id",
  "oldPassword" => "FMpsr<4[dGPu?B#u",
  "newPassword" => "S57Eb{:aMZhW=)G$"
];

try {
  Uiza\User::changePassword($params);
} catch(\Uiza\Exception\ErrorResponse $e) {
  print($e);
}
?>
```

```java
import java.util.*;
import com.google.gson.*;

import io.uiza.Uiza;
import io.uiza.exception.*;
import io.uiza.model.User;
import io.uiza.model.User.*;

public class Main {

  public static void main(String[] args) {
    Uiza.workspaceApiDomain = "your-workspace-api-domain.uiza.co";
    Uiza.authorization = "your-authorization";

    Map<String, Object> params = new HashMap<>();
    params.put("oldPassword", "FMpsr<4[dGPu?B#u");
    params.put("newPassword", "S57Eb{:aMZhW=)G$");

    try {
      JsonObject response = User.changePassword("<user-id>", params);
      System.out.println(response);
    } catch (UizaException e) {
      System.out.println("Status is: " + e.getStatusCode());
      System.out.println("Message is: " + e.getMessage());
      System.out.println("Description link is: " + e.getDescriptionLink());
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
```

```javascript
const uiza = require('uiza');
uiza.workspace_api_domain('your-workspace-api-domain.uiza.co');
uiza.authorization('your-authorization-key');

const params = {
  'id': 'your-user-id',
  'oldPassword': 'FMpsr<4[dGPu?B#u',
  'newPassword': 'S57Eb{:aMZhW=)G$'
};

uiza.user.change_password(params)
  .then((res) => {
    // Identifier of user has been reset password
  }).catch((err) => {
    //Error
  });
```

```go
import (
  uiza "github.com/uizaio/api-wrapper-go"
  "github.com/uizaio/api-wrapper-go/user"
)

func init() {
  Uiza.WorkspaceAPIDomain = "your-workspace-api-domain.uiza.co"
  Uiza.Authorization = "your-authorization"
}

params := &uiza.UserChangePasswordParams{
  ID: uiza.String("your-user-id"),
  OldPassword: uiza.String("FMpsr<4[dGPu?B#u"),
  NewPassword: uiza.String("S57Eb{:aMZhW=)G$"),
}
response, err := user.ChangePassword(params)
if err != nil {
  log.Printf("%v\n", err)
} else {
  log.Printf("%v\n", response)
}
```

```csharp
using System;
using Uiza.Net.Configuration;
using Uiza.Net.Enums;
using Uiza.Net.Parameters;
using Uiza.Net.Services;

UizaConfiguration.SetupUiza(new UizaConfigOptions
{
  WorkspaceApiDomain = "your-workspace-api-domain.uiza.co",
  Authorization = "your-authorization"
});

try
{
  var result = UizaServices.User.ChangePassword(new ChangePasswordParameter()
  {
    Id = "your-user-id",
    NewPassword = Guid.NewGuid().ToString(),
    OldPassWord = "curent password",
  });

  Console.WriteLine(string.Format("Change Password User Id = {0} Success", result.Data.id));
  Console.ReadLine();
}
catch (UizaException ex)
{
  Console.WriteLine(ex.Message);
  Console.ReadLine();
}
```

> Example Response

```json
{
    "data": {
        "id":"2c98b4d5-7d7f-4a0f-9258-5689f90fd28c"
    },
    "version": 3,
    "datetime": "2018-06-22T16:27:06.917Z",
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
```https://#{workspace_api_domain}/api/public/v3/admin/user/changepassword```

**Header Request**

| Header   | Type   | Description | Required |
|-------------|--------|-------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**


| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
|**oldPassword**|*string*|Current password|**Yes**|
|**newPassword**|*string*|New password (from a to Z, 6 to 25 characters)|**Yes**|
|**id**|*string*| Identifier of user need reset password    <span onclick="this.classList.toggle('inactive')" class = "tool-tip inactive"><br><i>If API-key belong to Admin, input ID of user that you want to reset password. In case API-key belong to normal user, this field isn't require.</i></span>|**Yes**|



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of user has been reset password |
