# hangman.rb

class Hangman 

	attr_reader :word
	attr_reader :chances
	attr_reader :board
	attr_accessor :guessed


	def initialize(word)
		@word = word
		@chances = 8
		@board = ("_ "*(word.length)).strip
		@guessed = []
	end

	# def wordup()
	# 	#define a random word from the dictionary file
	# end

	# end

	def guess? (letter)
		
    	if word.include(letter)? 
        	valid_guess(letter)
		else
			invalid_guess(letter)
		end

	# end

	# def valid_guess(letter)
		
	# 	index = word.index(letter)
	# 	(1..word.length).each_with_object([]) {|i | correct_arr << word.include(i) }
		
	# end

	# def invalid_guess(letter)


	# end

	# def update_board ()

	# 	if valid_guess? true
	# 		n=word.index(letter)
	# 		guessed []<< l
	# 		board.gsub(/letter/,n)
	# 	end
	# end

	# def update_letter_index(a)

	# end

end