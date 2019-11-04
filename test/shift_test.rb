require './test/test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_create_shift
    date = "021119"
    key = "12345"

    assert_equal [14, 24, 40, 46], Shift.create_shift(key, date)
  end
end
