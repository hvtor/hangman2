#hangman2_test.rb

require "test/unit"
require_relative "hangman2"

class HangmanTest < Test::Unit::TestCase

	def test_guess_is_correct
		
		h = Hangman.new("hello")
		assert_equal true, h.guess?
	end

end

	def test_guess_is_incorrect
		h = Hangman.new("hello")
		assert_equal true, h.guess?

	end

end
