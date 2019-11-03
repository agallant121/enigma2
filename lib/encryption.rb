require './module/shiftable'

class Encryption
  include Shiftable

  def encrypt(message, key, date)
    alphabet = ("a".."z").to_a << " "
    shift = create_shift(key, date)
  end
end
