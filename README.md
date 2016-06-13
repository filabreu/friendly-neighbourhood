# Friendly Neighbourhood - Web Crawler

The Friendly Neighbourhood is an app to scrap pages for title, description,
main image and video duration.

## Endpoints

### GET /link

#### Parameters
`url: string # required`

#### Responses

##### 200 OK

```
{
  "url": "http://example.com",# string
  "code": 200, # integer
  "message": "OK", # string
  "title": "Page Title", #string
  "description": "Page description text.", # string
  "main_image": "http://example.com/image.png", # string
  "duration": {
    "minutes": "1", # string
    "seconds": "23" # string
  }
}
```

##### 404 Not Found

```
{
  "url": "http://example.com/404",
  "code": 404,
  "message": "Not Found",
  "title": "Example Domain",
  "description": "",
  "main_image": "",
  "duration": {
    "minutes": null,
    "seconds": null
  }
}
```

##### 422 Unprocessable Entity

```
{
  "error": "url is required"
}
```


### Check it out!
[http://friendly-neighbourhood.herokuapp.com/link?url=https://www.youtube.com/watch?v=oHg5SJYRHA0]
