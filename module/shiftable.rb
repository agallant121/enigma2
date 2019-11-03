class Shiftable

  def create_shift(key, date)
  keys = key_shift(key)
  dates = date_shift(date)

  a = keys[0] + dates[0]
  b = keys[1] + dates[1]
  c = keys[2] + dates[2]
  d = keys[3] + dates[3]

  [a, b, c, d]
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
