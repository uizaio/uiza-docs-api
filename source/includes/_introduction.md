# Introduction


> Example Response

```json
{
    "data": {},
    "version": 3,
    "datetime": "2018-06-22T17:53:42.576Z",
    "policy": "public",
    "requestId": "f7cbd3d3-786b-4178-9a2d-13c5b6b7c2d5",
    "serviceName": "api",
    "message": "OK",
    "code": 200,
    "type": "SUCCESS"
}
```

This website documents the public API for Uiza version 3.0

You can view code examples in the dark area to the right; switch the programming language of the examples with the tabs in the top right (coming soon).

The Uiza API is organized around RESTful standard. Our API has predictable, resource-oriented URLs, and uses HTTP response codes to indicate API errors. JSON is returned by all API responses, including errors, although our API libraries convert responses to appropriate language-specific objects.

All API requests must be made over HTTPS. Calls made over plain HTTP will fail. API requests without authentication will also fail.


**Global format APIs**

```This is format for all response of API. <requestId> should be included in your email or your chat for faster support from Uiza.```

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **data** | Object | Array (multiple items) or object (single item) |
| **version** | Number | Version of APIs |
| **datetime** | Datetime | Response time of API (GTM+0) |
| **policy** | String | Type of calling method (public) |
| **requestId** | String | Response ID of request |
| **serviceName** | String | Name of services |
| **message** | String | Message response |
| **code** | Number | Code of [Status Response](#errors-code) |
| **type** | String | API's result |
