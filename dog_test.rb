require 'minitest/autorun'
require_relative 'animal'
require_relative 'dogs'

class DogTest < Minitest::Test 
	def setup
		@dog = Dog.new("Dog")
	end

	def test_initialize_with_param
		assert_equal "Dog", @dog.name
	end

	def test_dog_walk_speed
		@dog.speed = 55
		assert_equal 55, @dog.speed
	end
	def test_legs_speed
		@dog.legs = 4
		current_speed = @dog.speed
		@dog.walk
		assert_equal (current_speed + (0.2 * 4)),
		@dog.speed
	end

end