#write your code here
def translate_word(word)
	vowels = ["a","e","i","o","u"]
	if (vowels.include? word[0])
		s = word + "ay"
		
	elsif (vowels.include? word[1])
		if ("qu" == word[0..1])
			s = word[2..-1] + word[0..1] + "ay"
		else
			s = word[1..-1] + word[0] + "ay"
		end	
	elsif (vowels.include? word[2])
		if ("qu" == word[1..2])
			s = word[3..-1] + word[0..2] + "ay"
		else
			s = word[2..-1] + word[0..1] + "ay"
		end
	else
		s = word[3..-1] + word[0..2] + "ay"
	end
end

def translate(sentence)
	split_sentence = sentence.split
	#translate
	split_sentence.length.times{ |i|
	 split_sentence[i] = translate_word(split_sentence[i])
	}
	split_sentence.join(" ")
end
