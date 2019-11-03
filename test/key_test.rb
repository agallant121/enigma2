require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_random_number_has_five_numbers
    assert_equal 5, @key.random_key_generator.length
    assert_instance_of String, @key.random_key_generator
  end
end
