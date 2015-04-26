# docomochatter

Docomo Zatsudan(雑談) API Client

# Usage

```coffee
client = new Docomochatter(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  .catch (error) ->
    console.log error
```
