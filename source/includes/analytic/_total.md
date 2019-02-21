## Total 

> Example Request

```shell
curl -X GET \
  'https://#{workspace_api_domain}/api/public/v3/analytic/entity/video-quality/total-v2?start_date=2018-11-01&end_date=2018-11-19' \
  -H 'Authorization: uap-7442d4b99eb349b1bb678614e64cf064-1405ee51' \
```



> Example Response

```json
{
    "data": {
        "playback_failure_score": 1,
        "playback_failure_percentage": 0,
        "page_load_time": 1174,
        "video_startup_time": 1254,
        "player_startup_time": 1174,
        "aggregate_startup_time": 3197,
        "seek_latency": 15,
        "exits_before_video_start": 0,
        "rebuffer_percentage": 0,
        "rebuffer_frequency": 0,
        "rebuffer_duration": 0,
        "rebuffer_count": 0,
        "upscale_percentage": 12.431759777354001,
        "downscale_percentage": 0,
        "max_upscale_percentage": 0.11458333333333326,
        "max_downscale_percentage": 0
    },
    "version": 3,
    "datetime": "2018-06-18T03:17:07.022Z",
    "policy": "public",
    "requestId": "244f6f8f-4fc5-4f20-a535-e8ea4e0cab0e",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

**Get data grouped by day.** Track video playback on any [metric](#analytic-metrics) down to the individual view level on, so you can know exactly what’s happening on every user’s device and debug more effectively.

**HTTP Request**

<span class="get-button"> GET </span>
```https://#{workspace_api_domain}/api/public/v3/analytic/entity/video-quality/total-v2```

**Header Request**

| Header   | Type   | Description                              | Required |
|-------------|--------|---------------------------------------|---------|
| **Authorization** | *string* |Token get from API [Get API key](#get-api-key) | **Yes** |

**Body Request**

| Parameter | Type | Description | Required |
| ------------- | ------------- | ------------- | ------------- |
| **start_date** | *string* | Start date (UTC+0) with format: YYYY-MM-DD | **Yes** |
| **end_date** | *string* | End date (UTC+0) with format: YYYY-MM-DD | **Yes** |


**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| playback_failure_score | *number* | see [list](#analytic-metrics) |
| playback_failure_percentage | *number* | see [list](#analytic-metrics) |
| page_load_time | *number* | see [list](#analytic-metrics) |
| video_startup_time | *number* | see [list](#analytic-metrics) |
| player_startup_time | *number* | see [list](#analytic-metrics) |
| aggregate_startup_time | *number* | see [list](#analytic-metrics) |
| seek_latency | *number* | see [list](#analytic-metrics) |
| exits_before_video_start | *number* | see [list](#analytic-metrics) |
| rebuffer_percentage | *number* | see [list](#analytic-metrics) |
| rebuffer_frequency | *number* | see [list](#analytic-metrics) |
| rebuffer_duration | *number* | see [list](#analytic-metrics) |
| rebuffer_count | *number* | see [list](#analytic-metrics) |
| upscale_percentage | *number* | see [list](#analytic-metrics) |
| downscale_percentage | *number* | see [list](#analytic-metrics) |
| max_upscale_percentage | *number* | see [list](#analytic-metrics) |
| max_downscale_percentage | *number* | see [list](#analytic-metrics) |

