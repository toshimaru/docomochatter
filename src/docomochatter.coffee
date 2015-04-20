request = require('request')
querystring = require('querystring')

class Docomochater
  DOCOMO_URL = "https://api.apigw.smt.docomo.ne.jp/dialogue/v1/dialogue"

  init: ->
    @request()

  request: ->
    qs = querystring.stringify APIKEY: process.env.DOCOMO_API_KEY
    post_url = DOCOMO_URL + "?" + qs

    request.post
      url: post_url
      headers: 'Content-Type': 'application/json', Accept: 'application/json'
      json: utt: "こんにちは", (error, response, body) ->
        console.log body

(new Docomochater).init()
