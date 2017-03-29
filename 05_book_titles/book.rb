class Book
# write your code here
	def title
		@book_title
	end
	
	def title=(title_entered)
		split_title = title_entered.split
		split_title.length.times{ |i|
			split_title[i].capitalize! if ( (!["and", "the", "or", "of", "in", "a", "an"].include? split_title[i]) || (i==0) )
		}
		@book_title = split_title.join(" ")
	end
end
