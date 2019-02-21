## Retrieve a storage


> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/media/storage?id=cd003123-7ec9-4f3a-9d7c-f2de93e83e49 \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
```

Get information of your added storage (FTP or AWS S3)

> Example Response

```json
{
    "data": {
        "id": "cd003123-7ec9-4f3a-9d7c-f2de93e83e49",
        "name": "FTP Uiza",
        "description": "FTP of Uiza, use for transcode",
        "storageType": "ftp",
        "usageType": "input",
        "bucket": null,
        "prefix": null,
        "host": "ftp-exemple.uiza.io",
        "awsAccessKey": null,
        "awsSecretKey": null,
        "username": "uiza",
        "password": "=5;9x@LPsd+w7qW",
        "region": null,
        "port": 21,
        "createdAt": "2018-06-19T03:01:56.000Z",
        "updatedAt": "2018-06-19T03:01:56.000Z"
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

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/media/storage?id=cd003123-7ec9-4f3a-9d7c-f2de93e83e49```

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
| **id** | *string* | Identifier of storage |
| **name** | *string* | Name of storage |
| **description** | *string* | Storage's description |
| **storageType** | *string* | Storage can be FTP or AWS S3 |
| **usageType** | *string* | Input storage |
| **bucket** | *string* | Bucket data of AWS S3 |
| **prefix** | *string* | Prefix for objects store in AWS S3 |
| **host** | *string* | Storage host (AWS S3, FTP) |
| **awsAccessKey** | *string* | AccessKeyId |
| **awsSecretKey** | *string* | SecretKeyId |
| **username** | *string* | UserName of FTP |
| **password** | *string* | Password of FTP |
| **region** | *string* | AWS S3 region |
| **port** | *number* | Storage port |
| **createdAt** | *datetime* | Time created storage |
| **updatedAt** | *datetime* | Last edited time of storage |
