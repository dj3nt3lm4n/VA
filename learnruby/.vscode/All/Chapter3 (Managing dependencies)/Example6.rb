#Here Wheel has been changed to depend on Gear and gear_inches. 
#Gear is still responsible for the actual calculation but it expects a
#diameter argument to be passed in by the caller.
class Gear
  attr_reader :chainring, :cog
  def initialize (chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def gear_inches(diameter)
    ratio * diameter.to_f
  end

  def ratio
    chainring / cog.to_f
  end

end

class Wheel
  attr_reader :rim, :tire, :gear, :chainring
  def initialize(rim, tire, gear, cog, chainring)
    @rim = rim
    @tire = tire
    @chainring = chainring
    @gear = Gear.new(chainring, cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end

end

puts Wheel.new(26, 1.5, 52, 20 ,11).gear_inches

#This reversal of dependencies does no apparent harm. 
#Calculating gear_inches still requires collaboration 
#between Gear and Wheel and the result of the calculation is
#unaffected by the reversal.