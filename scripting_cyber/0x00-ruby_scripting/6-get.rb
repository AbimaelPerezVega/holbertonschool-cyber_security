#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'uri'

# get_request - Sends an HTTP GET request and prints status and formatted JSON response
# @url: The target URL to request
def get_request(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)

  puts "Response status: #{response.code} #{response.message}"
  puts "Response body:"

  begin
    parsed = JSON.parse(response.body)
    puts JSON.pretty_generate(parsed)
  rescue JSON::ParserError
    puts response.body
  end
end
