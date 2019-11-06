require "./test/test_helper"
require 'date'
require './lib/decryption'
require './lib/shift'

class DecryptionTest < Minitest::Test

  def test_it_returns_decrypted_message
    decryption = Decryption.new
    assert_equal "hello world", decryption.decrypt("keder ohulw", "02715", "040895")
  end
end
