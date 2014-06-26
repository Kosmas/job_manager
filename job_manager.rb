#!/usr/bin/env ruby

input_file = File.open(ARGV[0])
job_collection = Array.new

case input
when ""
  job_collection
when /[a-z]\s[=][>]/
  job_collection << input[0]
end

puts input_file
puts job_collection
