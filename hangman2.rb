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
		@guessword = ""
	end

	# def wordup()
	# 	#add a random word from the dictionary to an array or file
	# 	the word is called from the array
	# end

	# end

	def guess? (letter)
    		if word.include?(letter)==true
        		valid_guess(letter)
        	else
        		invalid_guess(letter)
        	end
    end
        	

	def valid_guess(letter2)
		@@win_count += @@win_count
		update_board(letter2)
	end

	def invalid_guess(letter3)
		@chances -= chances
		if chances > 1
			update_guesses(letter3)
		else
			lose_game()

	end

	def update_board(letter4)
		for i in 0..length-1 
	 		if word[i].include?(letter4) == true
 				puts letter4
 			else
 				puts "_ "
 			end
 		end
	end

	def update_guesses (letter5)

		guessed << ("#{letter5 + ", "}")
	end

	def lose_game ()
		if chances == 0
			puts "You lost! The word was : #{word}"
		end
	end

	def win_game (word)
		if win_count = word.length
			puts "You're a winner! You guessed the word: #{word}"
		end
	end
end


