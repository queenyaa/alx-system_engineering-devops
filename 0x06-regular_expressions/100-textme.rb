#!/usr/bin/env ruby
v = /(?:(?<=from:)(?:\p{L}+|\+?\d+)|(?>=to:)(?:\p{L}+|\+?\d*)|(?<=flags:)(?:-?\d+:?)*)/
puts ARGV[0].scan(v).join(',')
