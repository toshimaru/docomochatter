# docomochatter [![npm version](https://badge.fury.io/js/docomochatter.svg)](http://badge.fury.io/js/docomochatter)

Docomo Zatsudan(雑談) API Client.

# Requirement
* Node v0.12 or more
* Docomo API key (Get it [here](https://dev.smt.docomo.ne.jp/?p=about.index))

# Usage

Set docomo API key to the environment variable, `DOCOMO_API_KEY`, then instantiate the object and call `create_dialogue()` with your message. `create_dialogue()` returns [Promise](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise), so you can chain methods by using `.then()` and `.catch()`.

```js
var Docomochatter = require('docomochatter');

client = new Docomochatter(process.env.DOCOMO_API_KEY);
client.create_dialogue('hello').then(function(response){
  console.log(response.utt);
}).catch(function(error){
  console.log(error);
});
```

## via CoffeeScript

```coffee
Docomochatter = require('docomochatter')

client = new Docomochatter(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (response) ->
    console.log response.utt
  .catch (error) ->
    console.log error
```

# Sample API response

```
{ utt: 'はろー',
  yomi: 'はろー',
  mode: 'dialog',
  da: '30',
  context: 'mnqsaABy9i7ByZBB6QxU9Q' }
```
