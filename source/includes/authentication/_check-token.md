## Check token

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/admin/user/auth/check-token \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```

Token will expire within 30 days, you can check token's expire time by calling this API.

> Example Response

```json
{
    "data": {
        "token": "uap-7442d4b99eb349b1bb678614e64cf064-1405ee51",
        "expired": "11/06/2018 04:29:22",

    },
    "version": 3,
    "datetime": "2018-06-21T14:33:36.770Z",
    "policy": "public",
    "requestId": "f66f3499-f952-445d-bf19-092474952779",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="post-button"> POST </span>

`https://#{workspace_api_domain}/api/public/v3/admin/user/auth/check-token`

| Header   | Type   | Description | Required |
|-------------|--------|-------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **token** | *string* | A generate uuid4, use to authenticate for APIs.|
| **expired** | *date* | TIme of response API (GTM+0) |
