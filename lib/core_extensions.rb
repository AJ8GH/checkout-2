# pounds method converts numbers to £xx.xx string format
class Numeric
  def pounds
    "£%.2f" % self
  end
end
# to_symbol method converts strings with spaces and/or capital letters to snake_case symbols
class String
  def to_symbol
    self.downcase.split.join('_').to_sym
  end
end
# to_string method comverts snake_case symbols to strings with spaces
class Symbol
  def to_string
    self.to_s.split('_').join(' ')
  end
end
