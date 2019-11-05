require "./test/test_helper"
require 'date'
require './lib/encryption'
require './lib/decryption'
require './lib/shift'

class DecryptionTest < Minitest::Test

  def test_it_returns_decrypted_message
    encryption = Encryption.new
    assert_equal "hello world", encryption.decrypt("keder ohulw", "02715", "040895")
  end
end
