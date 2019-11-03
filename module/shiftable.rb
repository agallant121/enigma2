class Shiftable

  def create_shift(key, date)
  keys = key_shift(key)
  dates = date_shift(date)

  end

  def key_shift(key)
  a = key[0..1].to_i
  b = key[1..2].to_i
  c = key[2..3].to_i
  d = key[3..4].to_i

  [a, b, c, d]
  end

  def date_shift(date)
  date_squared = (date.to_i ** 2).to_s
  a = date_squared[-4].to_i
  b = date_squared[-3].to_i
  c = date_squared[-2].to_i
  d = date_squared[-1].to_i

  [a, b, c, d]
  end
end
