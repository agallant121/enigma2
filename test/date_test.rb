require "./test/test_helper"
require 'date'
require './lib/date'
require 'mocha/minitest'

class DateTest < Minitest::Test

  def test_it_makes_a_date
    Date.expects(:todays_date).returns("011119")
    assert_equal "011119", Date.todays_date
  end

  def test_it_is_todays_date
    assert_equal "051119", Date.todays_date
  end
end
