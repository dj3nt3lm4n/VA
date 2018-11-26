class Gear
  def initialize(chainring, cog)
      @chainring = chainring
      @cog = cog 
  end

  def ratio
  @chainring / @cog.to_f # <--- this is not right you need to hide the variables
                         #      by encapsulating them (attr_reader)
  end 
end

puts Gear.new(24,22).ratio
