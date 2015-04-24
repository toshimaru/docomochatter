request = require('request')
querystring = require('querystring')

class Docomochater
  DOCOMO_DIALOGUE_URL = "https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue"

  constructor: (@api_key) ->

  create_dialogue: (message, options = {}) ->
    new Promise (resolve, reject) =>
      request.post
        url: @post_url()
        headers: 'Content-Type': 'application/json', Accept: 'application/json'
        json: {utt: message, t: 20}, (error, response, body) ->
          unless error?
            resolve(body)
          else
            reject(body)

  post_url: ->
    qs = querystring.stringify APIKEY: @api_key
    post_url = "#{DOCOMO_DIALOGUE_URL}?#{qs}"

client = new Docomochater(process.env.DOCOMO_API_KEY)
client.create_dialogue('hello')
  .then (reponse) ->
    console.log reponse
  .catch (error) ->
    console.log error
