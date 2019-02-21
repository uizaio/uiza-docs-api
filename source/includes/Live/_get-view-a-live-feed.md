## Get view of live feed

> Example Request

```shell
curl -X GET \
  https://#{workspace_api_domain}/api/public/v3/live/entity/tracking/current-view?id=f79cd626-bd60-4ef9-9790-c2066bcbdae9 \
  -H 'Authorization: uap-a9ad1b44c05747e8870917e5ae9e956b-05a4fd49' \
  -H 'Cache-Control: no-cache'
```

This API use to get a live view status . This view only show when event has been started and being processing.

> Example Response

```json
{
    "data": {
        "stream_name": "peppa-pig-english-episodes",
        "watchnow": 1,
        "day": 1533271205999
    },
    "version": 3,
    "datetime": "2018-08-03T04:40:27.804Z",
    "policy": "public",
    "requestId": "9f52c11d-c495-4d57-9129-baad2ab28b49",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/live/entity/tracking/current-view?id=f79cd626-bd60-4ef9-9790-c2066bcbdae9```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **id** | *string* | EventId has been created.| **Yes** |




**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **stream_name** | *string* | Name of event|
| **day** | *number* | Timestamp while getting view |
| **watchnow** | *number* | Current view of event|

