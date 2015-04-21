# docomochatter

Docomo Zatsudan API Client

# Usage

```coffee
client = new Docomochater(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  , (error) ->
    console.log error
```
