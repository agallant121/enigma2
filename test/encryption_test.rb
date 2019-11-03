require "./test/test_helper"
require 'date'
require './lib/encryption'

class EncryptionTest < Minitest::Test

  def test_it_returns_encrypted_message
    encryption = Encryption.new
    assert_equal "keder ohulw", encryption.encrypt("hello world", "02715", "040895")
  end
end
