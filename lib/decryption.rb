class Decryption

  def decrypt(message, key, date)
    alphabet = ("a".."z").to_a << " "
    shift = Shift.create_shift(key, date)

    message.downcase.chars.map do |letter|
      if letter == " "
        actual = alphabet[(26 - shift[0])%27]
        shift.rotate!
        actual
      elsif !alphabet.include?(letter)
        
      else
        actual_2 = alphabet[(letter.ord-97 - shift[0])%27]
        shift.rotate!
        actual_2
      end
    end.join
  end
end
