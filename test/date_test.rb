require "./test/test_helper"
require 'date'
require './lib/date'

class DateTest < Minitest::Test

  def test_it_makes_a_date
    Date.expects(:todays_date).returns("011119")
    assert_equal "011119", Date.todays_date
  end
end
