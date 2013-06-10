require "test/unit"
require_relative "../PigLatin.rb"

class PL_tests < Test::Unit::TestCase
	def setup
		@pl = Pig_latin.new
		@word = "hello"
		@sentence = "hello world"
	end

	def test_convert_word_converts_word
		converted_word = @pl.convert(@word)
		assert_equal "ellohay", converted_word
	end

	def test_convert_sentence_converts_sentence
		converted_sentence = @pl.convert_sentence(@sentence)
		assert_equal "ellohay orldway", converted_sentence
	end

	def test_convert_sentence_returns_nil_if_nil
		assert @pl.convert_sentence(nil).nil?
	end

	def test_convert_sentence_returns_empty_if_empty
		assert @pl.convert_sentence("").empty?
	end
end