#!/usr/bin/env ruby

require 'JSON'
require 'cgi'

FILE = "./file.txt"
text_ary = [] 
#text_ary = Array.new
File.open(FILE).each do |line|
    line_hash = {}
    line.chomp!
    #line.sub(/=/, ":")
    line_hash = Hash[*(line.split("="))] 
    text_ary <<  line_hash
end 
cgi = CGI.new
puts cgi.header
puts JSON.generate(text_ary) 
