class Key

  def self.random_key_generator
    rand.to_s[2..6]
  end
end
