require './lib/chisel_class'

chisel = Chisel.new(ARGV[0], ARGV[1])

puts "Converted #{ARGV[0]} (lines) to #{ARGV[1]} (lines)"
