class Enigma
  def initialize
    @encryption = Encryption.new
    @decryption = Decryption.new
  end

  # def encrypt(message, key, date = TodaysDate.new)
  # if key.length != 5 && key.length == 6
  # => date = key
  # => key = RandomNumber.number
  # end
  #
  # {
  #   encryption: @encryption.encrypt(message, key, date),
  #   key: key,
  #   date: date
  # }

  # end


  # def self.encrypt(message, key, date)
  # => shift = validate_shift(key, date)
  # end

end
