## Create a live event

> Example Request

```shell
curl -X POST \
  https://#{workspace_api_domain}/api/public/v3/live/entity \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
  -H 'Content-Type: application/json' \
  -d '{
    "name":"test event",
    "mode":"push",
    "encode":1,
    "dvr":1,
    "description":"This is for test event",
    "poster":"//image1.jpeg",
    "thumbnail":"//image1.jpeg",
    "linkStream":[
              "https://playlist.m3u8"
            ],
    "resourceMode":"single"
}'
```

These APIs use to create a live streaming and manage the live streaming input (output).
A live stream can be set up and start later or start right after set up.
Live Channel Minutes counts when the event starts.

> Example Response

```json
{
    "data": {
        "id": "8b83886e-9cc3-4eab-9258-ebb16c0c73de"
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
```https://#{workspace_api_domain}/api/public/v3/live/entity```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| Authorization | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
|**name**|*string*|The event name (limit 100 characters)|**Yes**|
|**mode**|*integer*|Type of event can be ``pull`` or ``push`` <span onclick="this.classList.toggle('inactive')" class = "tool-tip inactive"><br><i>**Pull**: We has supported RTMP, HLS and direct Live Youtube link. Uiza pull feed from pull link and broadcast it using Uiza's SDK. **Push:** Uiza give you a **Publish endpoint**, you can push feed into the endpoint and Uiza will broadcast it using Uiza's SDK.</i></span> |**Yes**|
|**encode**|*string*|Mode of live stream (``0`` = no encode, ``1`` = encode)|**Yes**|
|**dvr**|*enum*|Feed after streamed will be recorded as a mp4 file <span onclick="this.classList.toggle('inactive')" class = "tool-tip inactive"><br><i>**0**: No record <p> </p> **1**: Active Feature record </i></span>|**Yes**|
|**description**|*text*|Description of the live stream||
|**linkPublishSocial** | *array* | Info to share live into social  <span onclick="this.classList.toggle('inactive')" class = "tool-tip inactive"><br><i>**dropdown**: type of social  (youtube/facebook). <p> </p> **address:**: stream URL.  <p> </p> **streamKey:**: stream key correspond to stream URL.</i></span>| |
|**thumbnail**|*text*|An Image link||
|**linkStream**|*array*|Link streaming (if you choose mode = pull)|**Yes**|
|**resourceMode**|*enum*|Resource mode ( ``single`` = only 1 feed & output), ``redundant`` = more than 1 feed & output to backup)|**Yes**|



**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of event has been created |


