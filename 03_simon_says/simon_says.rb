#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, nums = 2)
	sentence = word
	(nums - 1).times {
		(sentence = sentence + ' ' + word)
	}
	sentence
end

def start_of_word(word,nums)
	word[0..(nums-1)]
end

def first_word(word)
	word = word.split
	word[0]
end

def titleize(sentence)
	split_sentence = sentence.split
	split_sentence.length.times do |i|
		word = split_sentence[i][0]
		word.upcase!
		if ( (!["and", "the", "or", "of", "in", "a", "an", "over"].include? split_sentence[i]) || (i == 0))
			split_sentence[i][0] = word
		end
	end
	split_sentence.join(' ')
end











