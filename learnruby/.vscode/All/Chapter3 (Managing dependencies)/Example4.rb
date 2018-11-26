#removing Arguments

class Gear
  attr_reader :chainring, :cog, :wheel 
  def initialize(chainring, cog, wheel)
     @chainring = chainring
     @cog       = cog
     @wheel     = wheel
  end
  ...
end
  Gear.new( 52,
            11,
            Wheel.new(26, 1.5)).gear_inches

#the benefits of this is that removes every dependenci order
#gear is free to addor remove initializationarguments and defaults
class Gear
attr_reader :chainring, :cog, :wheel 
 def initialize(args) #arguments replaced by args word
    @chainring = args[:chainring]
    @cog       = args[:cog]
    @wheel     = args[:wheel]
 end
 ...
end

Gear.new(
  :chainring => 52,
  :cog => 11,
  :wheel => Wheel.new(26, 1.5)).gear_inches

#you can also add defaults to the arguments 
#espesifying defaults using ||
#but be careful no always it's going to do what you want
def initialize (args)
    @chainring = args[:chainring] || 40
    @cog       = args[:cog]       || 18
    @wheel     = args[:wheel]
end

#specifying defaults using fetch
def initialize(args)
    @chainring = args.fetch(:chainring, 40)
    @cog = args.fetch(:cog, 18) 
    @wheel = args[:wheel]
end

# specifying defaults by merging a defaults hash
def initialize(args)
    args = defaults.merge(args) 
    @chainring = args[:chainring]
# ...
end

def defaults
  {:chainring => 40, :cog => 18}
end