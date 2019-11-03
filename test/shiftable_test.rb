require './test/test_helper'
require './module/shiftable'

class ShiftableTest < Minitest::Test
  include Shiftable

  def test_create_shift
    date = "021119"
    key = "12345"
    assert_equal [14, 24, 40, 46], create_shift(key, date)
  end
end
