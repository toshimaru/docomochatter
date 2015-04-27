# docomochatter

Docomo Zatsudan(雑談) API Client

# Requirement
* Node v0.12 or more
* A Docomo API key (Get [here](https://dev.smt.docomo.ne.jp/?p=about.index))

# Usage

Set docomo API key to the environment variable, `DOCOMO_API_KEY`, then instantiate the object and call `create_dialogue()` with your message. `create_dialogue()` returns [Promise](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise), so you can chain methods by using `.then()` and `.catch()`.

```js
var Docomochatter = require('./lib/docomochatter');

client = new Docomochatter(process.env.DOCOMO_API_KEY);
client.create_dialogue('hello').then(function(response){
  console.log(response);
}).catch(function(error){
  console.log(error);
});
```

## CoffeeScript ver.

```coffee
Docomochatter = require('./src/docomochatter')

client = new Docomochatter(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  .catch (error) ->
    console.log error
```
