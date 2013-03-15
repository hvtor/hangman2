#hangman2_test.rb

require "test/unit"
require_relative "hangman2"

class HangmanTest < Test::Unit::TestCase

# INITIALIZE TESTS

	def test_initialize_word_is_correctly_loaded
		word = "hello"
		h = Hangman.new(word)
		assert_equal "hello", h.word
	end

	def test_initialize_word_providies_appropriately_formatted_board
		word = "hello"
		h = Hangman.new(word)
		assert_equal "_ _ _ _ _", h.board
	end

	def test_initialize_chances_starts_as_eight
		word="hello"
		h = Hangman.new(word)
		assert_equal 8, h.chances
	end

	def test_initialize_guessed_starts_as_empty_array_formatted
		word = "hello"
		h = Hangman.new(word)
		assert_equal [], h.guessed
	end

# # GUESS TEST THAT ENSURES THE LETTER IS PASSED TO GUESS
# # VALIDATING METHODS

	def test_guess_passes_letter
		word = "hello"
		h= Hangman.new(word)
		assert_equal true, h.guess("e")
	end

# # GUESS TESTS THAT VALIDATE THE GUESS (LETTER ENTERED) 
# # AS CORRECT, INCORRECT, OR LATER THROWS AN EXCEPTION
	
	# def test_guess_is_correct
	# 	h = Hangman.new("foxtrot")
	# 	assert_equal true, h.guess?
	# end

# 	def test_guess_is_incorrect
# 		h = Hangman.new("tango")
# 		assert_equal true, h.guess?
# 	end

# # GUESS TESTS THAT ARE VALID AND OUTPUT THE CORRECT LETTER
# # BOARD

# 	def test_guess_is_output_to_the_board
# 		h = Hangman.new("hello")
# 		assert_equal true, h.
# 	end

# 	def test_guess_is_not_output_to_board
# 		h = Hangman.new("")
# 	end

end
