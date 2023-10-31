#!/usr/bin/env ruby
# Ruby script accepts one argument and matches it against another

regex = /HolbertonHolberton/
input = ARGV[0]

if regex.match(input)
  puts input
end
