request = require('request')
querystring = require('querystring')
Q = require('q')

class Docomochater
  DOCOMO_DIALOGUE_URL = "https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue"

  constructor: (@api_key) ->

  create_dialogue: (message, params = {}) ->
    deferred = Q.defer()
    request.post
      url: @post_url()
      headers: 'Content-Type': 'application/json', Accept: 'application/json'
      json: utt: message, (error, response, body) ->
        unless error?
          deferred.resolve(body)
        else
          deferred.reject(body)
    deferred.promise

  post_url: ->
    qs = querystring.stringify APIKEY: @api_key
    post_url = "#{DOCOMO_DIALOGUE_URL}?#{qs}"

client = new Docomochater(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  , (error) ->
    console.log error
