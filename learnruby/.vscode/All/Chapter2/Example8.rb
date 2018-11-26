#isolated wheel behaviour inside of the gear class
class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

#convert the wheel struct to an independent wheel class 
#and add a new method (circumference).
class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim        = rim
    @tire       = tire
  end

  def diameter
    rim + ( tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end
#both classes have single responsibility.

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference
puts Gear.new(52, 11, @wheel).gear_inches
puts Gear.new(52, 11).ratio

#Clases that do one thing allows change without
#consequence and reuse without duplication 