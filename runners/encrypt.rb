require './lib/enigma'

@enigma = Enigma.new
@file = File.open(ARGV[0], 'r') #opens message.txt file, 'r' stands for read

  def create_encryption
    hash = @enigma.encrypt(@file.read.chomp)
    decryption_file = File.open(ARGV[1], 'w')
    decryption_file.write(hash[:encryption])
    puts "Created 'encrypted.txt' with the key #{hash[:key]} and date #{hash[:date]}"
  end
  create_encryption

#ruby runners/encrypt.rb message.txt encrypted.txt
