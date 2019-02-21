# Callback

Callback used to retrieve an information for Uiza to your server, so you can have a trigger notice about an entity is upload completed and .

> Example callback after create entity success

```json
{
  "text": "example callback",
  "id": "7fd1c81e-eecc-4aa1-8c7b-6aa647a468d9",
  "status": "Create success"
}
```

> Example callback after publish entity success

```json
{
  "text": "example callback",
  "id": "7fd1c81e-eecc-4aa1-8c7b-6aa647a468d9",
  "status": "Entity publish success"
}
```

**Response Parameters**

| Parameter   | Type   | Description |
|-------------|--------|-------------------------|
| **id** | *string* | Identifier of entity has been created/published  |
| **text** | *string* | JSON Data you put in callback  |
| **status** | *enum* | Create of Publish success |
