class Pig_latin

	def convert(word)
		return nil if word.nil?
		return "" if word.empty?
		i=0
		word.each_char do |c|  #returns position of first vowl
			break if ["a","e","i","o","u"].include?(c)
    	i+=1
  	end

  	word[i,word.size] + word[0, i] + "ay" #rearranges string at position of first vowl
	end

	def initialize(string)
		return nil if string.nil?
		return "" if string.empty?
		converted_sent = ""

		string.split.each do |word|
			converted_sent << convert(word) + " "
		end
		puts converted_sent
	end
end

puts "Enter a sentence to convert to pig latin"
Pig_latin.new(gets.chomp)