require "./test/test_helper"
require 'date'
require './lib/decryption'

class DecryptionTest < Minitest::Test

  def test_it_returns_encrypted_message
    encryption = Encryption.new
    assert_equal "hello world", encryption.encrypt("keder ohulw", "02715", "040895")
  end
end
