require_relative "PigLatin.rb"
puts "What sentence would you like to convert to pig latin?"
pl = Pig_latin.new
puts pl.convert_sentence(gets.chomp)