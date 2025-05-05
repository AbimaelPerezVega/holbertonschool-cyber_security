#!/usr/bin/env ruby
require 'open-uri'
require 'uri'
require 'fileutils'

# Check for correct number of arguments
if ARGV.length != 2
  puts "Usage: #{__FILE__} URL LOCAL_FILE_PATH"
  exit 1
end

url = ARGV[0]
local_path = ARGV[1]

begin
  puts "Downloading file from #{url}..."

  # Create directory if it doesn't exist
  dir = File.dirname(local_path)
  FileUtils.mkdir_p(dir) unless Dir.exist?(dir)

  # Download and write file
  URI.open(url) do |file|
    File.open(local_path, 'wb') do |output|
      output.write(file.read)
    end
  end

  puts "File downloaded and saved to #{local_path}."
rescue OpenURI::HTTPError => e
  puts "HTTP Error: #{e.message}"
rescue SocketError => e
  puts "Connection Error: #{e.message}"
rescue => e
  puts "An error occurred: #{e.message}"
end
