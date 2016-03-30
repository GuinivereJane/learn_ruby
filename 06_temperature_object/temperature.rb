require "pry-byebug"

class Temperature

  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def to_celsius
    return temp[:c] if temp.has_key? :c
    (temp[:f]-32) * 5 / 9

  end

  def to_fahrenheit
    return temp[:f] if temp.has_key? :f
    temp[:c] * 9 / 5 + 32
  end

  def self.in_celsius(temp)
    self.new c: temp
  end

  def self.in_fahrenheit(temp)
    self.new f: temp
  end
end

class Celsius < Temperature
  def initialize(temp)
    hash = {c: temp}
    @temp = hash
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    hash = {f: temp}
    @temp = hash
  end

end
