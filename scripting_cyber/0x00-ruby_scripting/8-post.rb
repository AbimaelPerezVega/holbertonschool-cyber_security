#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'uri'

# post_request - Sends an HTTP POST request with JSON body and prints the response
# @url: String - The target URL
# @body_params: Hash - Body data to be sent as JSON
def post_request(url, body_params)
  uri = URI.parse(url)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = uri.scheme == "https"

  request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })
  request.body = body_params.to_json

  response = http.request(request)

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"

  begin
    parsed = JSON.parse(response.body)
    puts JSON.pretty_generate(parsed)
  rescue JSON::ParserError
    puts response.body
  end
end
