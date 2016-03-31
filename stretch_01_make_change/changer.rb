require "pry"


class Changer
  attr_accessor :pennies, :change

  @pennies
  @change = []

  def dimes
    temp = @pennies /10
    temp.flooe
    temp.times {@change << 10}
    done
  end
  

  def self.quarters
    temp = @pennies / 25
    pennies = @pennies mod 25
    temp = temp.floor
    temp.times {@change << 25}
    dimes
  end

  def self.make_change(pennies)
    @pennies = pennies
    quarters
  end

  def self.done
    temp = @change
    @change = []
    temp
  end


end
