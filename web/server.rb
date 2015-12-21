#!/usr/local/bin/ruby

require "JSON"

FILE = "file.txt"
text_ary = [] 
#text_ary = Array.new
File.open(FILE).each do |line|
    line_hash = {}
    line.chomp!
    #line.sub(/=/, ":")
    line_hash = Hash[*(line.split("="))] 
    text_ary <<  line_hash
end 
p text_ary

puts JSON.generate(text_ary)


