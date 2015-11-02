def translate(phrase)
	# if word == "apple" then "appleay"
	# elsif word == "banana" then "ananabay"
	# elsif word == "cherry" then "errychay"
	# elsif word == "eat pie" then "eatay iepay"
	# end
	output_string = ""
	vowel_list = ['a', 'e', 'i', 'o', 'u']
	word_array = phrase.split
	word_array.each do |word|
		if vowel_list.include?(word[0]) then
			output_string << "#{word}ay "
		elsif start_with_cluster?(word) then
			output_string << "#{cluster_translate(word)}ay "
		else
			word << word[0]
			word[0] = ""
			output_string << "#{word}ay"
		end

	end
	output_string.strip
end

def start_with_cluster?(word)
	cluster_list = ['squ', 'sch', 'qu', 'br', 'ch', 'thr', 'th']
	cluster_list.each do |cluster|
		if word.start_with?(cluster) then return true
		end
	end
	return false
end

def cluster_translate(word)
	cluster_list = ['squ', 'sch', 'qu', 'br', 'ch', 'thr','th']
	cluster_list.each do |cluster|
		if word.start_with?(cluster) then
			word.slice! cluster
			word << cluster
			return word
		end
	end
end