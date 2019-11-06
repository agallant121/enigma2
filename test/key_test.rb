require './test/test_helper'
require './lib/key'

class KeyTest < Minitest::Test

  def test_random_number_has_five_numbers
    assert_equal 5, Key.random_key_generator.length
    assert_instance_of String, Key.random_key_generator
  end
end
