require "pry"


class Changer
  attr_accessor :pennies, :change

  @pennies
  @change = []

  def self.coppers
    @pennies.times {@change << 1}
    done
  end

  def self.nickels
    temp = @pennies / 5
    @pennies = @pennies % 5
    temp.floor
    temp.times {@change << 5}
    coppers
  end


  def self.dimes
    temp = @pennies / 10
    @pennies = @pennies % 10
    temp.floor
    temp.times {@change << 10}
    nickels
  end


  def self.quarters
    temp = @pennies / 25
    @pennies = @pennies % 25
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
