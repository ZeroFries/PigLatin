def Pig_latin(string)
	return nil if string.nil?
	return "" if string.empty?
	i=0
	string.each_char do |c|  #returns position of first vowl
		break if ["a","e","i","o","u"].include?(c)
    i+=1
  end

  string[i,string.size] + string[0, i] + "ay" #rearranges string at position of first vowl
end

puts "Enter a word to convert to pig latin"
print Pig_latin(gets.chomp)