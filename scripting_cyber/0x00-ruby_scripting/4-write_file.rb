#!/usr/bin/env ruby
require 'json'

# merge_json_files - Merges JSON objects from file1 into file2
# @file1_path: Path to the source JSON file
# @file2_path: Path to the destination JSON file (will be updated)
def merge_json_files(file1_path, file2_path)
  file1_data = JSON.parse(File.read(file1_path))
  file2_data = JSON.parse(File.read(file2_path))

  merged_data = file2_data + file1_data

  File.open(file2_path, 'w') do |file|
    file.write(JSON.pretty_generate(merged_data))
  end

  # These lines should be *after* the file is written and closed
  puts "Merged JSON written to file.json"
  puts "File merged successfully!"
end
