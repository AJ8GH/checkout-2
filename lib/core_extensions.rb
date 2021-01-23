class Numeric
  def pounds
    "£%.2f" % self
  end
end

class String
  def to_symbol
    self.downcase.split.join('_').to_sym
  end
end

class Symbol
  def to_string
    self.to_s.split('_').join(' ')
  end
end
