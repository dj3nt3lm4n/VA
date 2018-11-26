
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog,rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire= tire
  end
 
  def gear_inches
    ratio * Wheel.new(rim, tire).diameter #<-----here is the wheel class dependency
  end
end

#in this example wee se that this metods has a reference of the
#class wheel so if the class wheel changes the method has to change too 

Gear.new(52, 11, 26, 1.5).gear_inches