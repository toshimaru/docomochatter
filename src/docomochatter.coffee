extend = require('util')._extend
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
        json: extend(options, {utt: message}), (error, response, body) ->
          unless error?
            resolve(body)
          else
            reject(body)

  post_url: ->
    qs = querystring.stringify APIKEY: @api_key
    "#{DOCOMO_DIALOGUE_URL}?#{qs}"

module.exports = Docomochater
