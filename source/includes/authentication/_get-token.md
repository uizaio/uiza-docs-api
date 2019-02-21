## Create token

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/admin/user/auth \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{"username": "test@uiza.co",
"password":"test12345",
"domain":"#{workspace_domain}"
      }'
```

Get an access token that provides temporary, used to secure access to Uiza's APIs.

> Example Response

```json
{
    "data": {
        "token": "uap-7442d4b99eb349b1bb678614e64cf064-1405ee51",
        "appId": "36019b8db38f4370b45fa838024229db"
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
```https://#{workspace_api_domain}-api.uiza.co/api/public/v3/admin/user/auth```

| Parameter   | Type   | Description | Required |
|-------------|--------|-------------|---------|
| **username** | *string* | Your register email with Uiza | **Yes** |
| **password** | *string* | Your password of account (password form 6-25 characters | **Yes** |
| **domain** | *string* | Get workspace_domain in your register email | **Yes** |



<aside class="success">
  Token will be expired within 30 days
</aside>

**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **token** | *string* | A generate uuid4, use to authenticate for APIs.|
| **appId** | *string* | Workspace ID , a 32 lenght string |

