#!/usr/local/bin/ruby

FILE = "file.txt"
text_ary = [] 
#text_ary = Array.new
File.open(FILE).each do |line|
    line.chomp!
    text_ary << eval("{line.sub(/=/, ":")}")
    #p line.split(":") 
    #text_ary <<  line 
end

puts text_ary




