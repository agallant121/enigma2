require './lib/enigma'

@enigma = Enigma.new
@file = File.open(ARGV[0], 'r') #opens message.txt file, 'r' stands for read

  def create_decryption
    hash = @enigma.decrypt(@file.read.chomp, ARGV[2], ARGV[3])
    decryption_file = File.open(ARGV[1], 'w')
    decryption_file.write(hash[:decryption])
    puts "Created 'decrypted.txt' with the key #{hash[:key]} and date #{hash[:date]}"
  end
  create_decryption

#ruby runners/decrypt.rb encrypted.txt decrypted.txt key date
