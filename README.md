# docomochatter

Docomo Zatsudan(雑談) API Client

# Usage

Set docomo API key to `DOCOMO_API_KEY`.

```js
var Docomochatter = require('./lib/docomochatter');

client = new Docomochatter(process.env.DOCOMO_API_KEY);
client.create_dialogue('hello').then(function(response){
  console.log(response);
}).catch(function(error){
  console.log(error);
});
```

## CoffeeScript

```coffee
Docomochatter = require('./src/docomochatter')

client = new Docomochatter(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  .catch (error) ->
    console.log error
```
