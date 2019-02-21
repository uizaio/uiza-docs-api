## Update storage
Update storage's information

> **Create FTP a Storage**

> Example Request

```shell
curl -X PUT \
  https://#{workspace_api_domain}/api/public/v3/media/storage \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"cd003123-7ec9-4f3a-9d7c-f2de93e83e49",
    "name":"FTP Uiza",
    "description":"FTP of Uiza, use for transcode",
    "storageType":"ftp",
    "host":"ftp-example.uiza.io",
    "username":"uiza",
    "password":"=5;'9x@LPsd+w7qW",
    "port":21
}'
```

> Example Response

```json
{
    "data": {
        "id": "cd003123-7ec9-4f3a-9d7c-f2de93e83e49"
    },
    "version": 3,
    "datetime": "2018-06-19T03:01:56.476Z",
    "policy": "public",
    "requestId": "02387807-a0e2-4b06-9791-c45bcc9e1362",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="put-button"> PUT </span>
```https://#{workspace_api_domain}/api/public/v3/media/storage```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

### Update FTP storage

| Parameter   | Type   | Description | Required |
|-------------|--------|-------------|---------|
| id | *string* | Identifier of the storage| **Yes** |
| name | *string* | Name of the storage| **Yes** |
| host | *string* | Host name of the server or IP address | **Yes** |
| port | *int* | Used port for FTP server. Normally will be 21 | **Yes** |
| type | *string* | Storage can be FTP or S3. Allowed values: **[S3, FTP]** | **Yes** |
| username | *string* | Account username |  |
| password | *string* | Account password |  |
| description | *string* | Storage's description |  |

### Update S3 storage

| Parameter   | Type   | Description | Required |
|-------------|--------|-------------|---------|
| id | *string* | Identifier of the storage| **Yes** |
| name | *string* | Name of the storage| **Yes** |
| host | *string* | Host name of the server or IP address | **Yes** |
| port | *int* | Used port for S3 server. Normally will be 443  | **Yes** |
| type | *string* | Storage can be FTP or AWS S3. Allowed values: **[S3, FTP]** | **Yes** |
| awsAccessKey | *string* | AWS Access key ID |  |
| awsSecretKey | *string* | AWS Secret key ID|  |
| prefix | *string* |Prefix for objects store in AWS S3|  |
| bucket | *string* |Bucket data of AWS S3|  |
| region | *string* |AWS S3 region|  |
| description | *string* | Storage's description |  |

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
| **host** | *string* | Storage host (AWS S3, ftp) |
| **awsAccessKey** | *string* | AccessKeyId |
| **awsSecretKey** | *string* | SecretKeyId |
| **username** | *string* | UserName of FTP |
| **password** | *string* | Password of FTP |
| **region** | *string* | AWS region |
| **port** | *number* | Storage port |
| **createdAt** | *datetime* | Time created storage |
| **updatedAt** | *datetime* | Last edited time of storage |
