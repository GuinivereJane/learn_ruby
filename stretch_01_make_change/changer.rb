require "pry"


class Changer
  
  def self.coppers(pennies,change)
    pennies.times {change << 1}
    change
  end

  def self.nickels(pennies,change)
    (pennies / 5).floor.times {change << 5}
    coppers(pennies % 5,change)
  end


  def self.dimes(pennies,change)
    (pennies / 10).floor.times {change << 10}
    nickels(pennies % 10,change)
  end

  def self.quarters(pennies,change)
    (pennies / 25).floor.times {change << 25}
    dimes(pennies % 25, change)
  end

  def self.make_change(pennies)
    change = []
    quarters(pennies,change)
  end




end
