class Gear
  attr_reader :chainring, :cog, :rim, :tire 
  def initialize(chainring, cog, rim, tire)
            @chainring = chainring
            @cog       = cog
            @rim       = rim
            @tire      = tire
  end

  #Gear has dependencies of wheel
  #Gear does not need them to do its job and make it
  #harder to change
  def gear_inches
  ratio * Wheel.new(rim, tire).diameter
  end

  def ratio
  chainring / cog.to_f
  end
  # ...
end
  
class Wheel
  attr_reader :rim, :tire
 def initialize(rim, tire)
  @rim = rim
  @tire = tire
 end
  
 def diameter
  rim + (tire * 2)
 end
  # ...
end
  
puts Gear.new(52, 11, 26, 1.5).gear_inches