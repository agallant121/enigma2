require "./test/test_helper"
require 'date'
require './lib/enigma'
require './lib/encryption'
require './lib/decryption'
require './lib/shift'
require './lib/key'
require './lib/date'

class EnigmaTest < Minitest::Test

  def setup
  @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt_a_message
  expected =  {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    expected_2 =  {
        encryption: "lfhasasdvm ",
        key: "02715",
        date: Date.todays_date
      }
    encryption = @enigma.encrypt("hello world", "040895")
    encryption_2 = @enigma.encrypt("hello world")
  assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  assert_equal expected_2, @enigma.encrypt("hello world", "02715")
  assert_equal 5, encryption[:key].length
  assert_equal 11, encryption[:encryption].length
  assert_equal 5, encryption_2[:key].length
  assert_equal 11, encryption_2[:encryption].length
  assert_equal Date.todays_date, encryption_2[:date]
  end

  def test_it_can_decrypt_a_message
    expected ={
       decryption: "hello world",
       key: "02715",
        date: "040895"
     }

     expected_2 ={
        decryption: "hello world",
        key: "02715",
         date: Date.todays_date
      }
     assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
     assert_equal expected_2, @enigma.decrypt("lfhasasdvm ", "02715")
   end
end

# # encrypt a message with a key and date
# pry(main)> enigma.encrypt("hello world", "02715", "040895")
# #=>
# #   {
# #     encryption: "keder ohulw",
# #     key: "02715",
# #     date: "040895"
# #   }
#
# # decrypt a message with a key and date
# pry(main) > enigma.decrypt("keder ohulw", "02715", "040895")
# #=>
# #   {
# #     decryption: "hello world",
# #     key: "02715",
# #     date: "040895"
# #   }
#
# # encrypt a message with a key (uses today's date)
# pry(main)> encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# pry(main)> enigma.encrypt("hello world")
# #=> # encryption hash here
