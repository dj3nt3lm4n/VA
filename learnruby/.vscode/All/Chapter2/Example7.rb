class Gear
  attr_reader :chainring, :cog, :wheel
  
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
  chainring / cog.to_f
  end

  def gear_inches
  ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
     rim + (tire * 2)
    end
  end 
end

gear = Gear.new(22,14,26,1.5)
puts gear.ratio
puts gear.gear_inches