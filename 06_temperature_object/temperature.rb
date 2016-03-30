class Temperature

attr_accessor :temp

def initialize(temp)
  @temp = temp
end

def to_celsius
  temp.each_key {|system| system == :f ? (temp[system] - 32) * 5 / 9 : temp{system}}
end

def to_fahrenheit
  temp.each_key {|system| system == :c ? temp[system] * 9/5 +32 : temp{system} }
end

def self.to_celsius
  temp.each_key {|system| system == :f ? (temp[system] - 32) * 5 / 9 : temp{system}}
end

def self.to_fahrenheit
  temp.each_key {|system| system == :c ? temp[system] * 9/5 +32 : temp{system} }
end
