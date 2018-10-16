require "minitest/autorun"
require_relative "roman_num.rb"
class My_test < Minitest::Test

	def test_num_one
		assert_equal(1,1)
	end

	def test_1_return_i
		assert_equal("I", romanize(1))
	end

	def test_2_return_ii
		assert_equal("II", romanize(2))
	end

	def test_5_return_v
		assert_equal("V", romanize(5))
	end

	def test_8_return_viii
		assert_equal("VIII", romanize(8))
	end

	def test_14_return_xiv
		assert_equal("XIV", romanize(14))
	end

	def test_40_return_xl
		assert_equal("XL", romanize(40))
	end

	def test_90_return_xc
		assert_equal("XC", romanize(90))
	end

	def test_450
		assert_equal("CDL", romanize(450))
	end

	def test_1000
		assert_equal("M", romanize(1000))
	end

	def test_1500
		assert_equal("MD", romanize(1500))
	end

	def test_1668
		assert_equal("MDCLXVIII", romanize(1668))
	end

	def test_integer
		assert_equal(Integer, arabic("").class)
	end

	def test_i
		assert_equal(1, arabic("I"))
	end

	def test_ii
		assert_equal(2, arabic("II"))
	end

	def test_vii
		assert_equal(7, arabic("VII"))
	end



end