class Gear
  attr_reader :chainring, :cog, :rim, :tire
  
  def initialize(chainring, cog, rim, tire)
  @chainring = chainring
  @cog = cog
  @wheel = Wheel.new(rim, tire) #<---moved the dependecy to the initialize method
                                #    to avoid the change of the method
  end

  def gear_inches
  ratio * wheel.diameter
  end
  # ...
end

#in this case, the creation of wheel is deferred until
#gear_inches invokes the new wheel method
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize (chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def wheel
    @wheel ||= wheel.new(rim, tire) #<---- unsing the ||= operator
  end

#still in both of this examples gear still knows to much
#however an improvement has been made

#---------------------------------------------------------------------

#we can improve the gear_inches method by spliting its behaviour 
#in different methods.
# we do this in case we want to do a more complex operations.

def gear_inches #<---- method to split
  ratio * wheel.diameter 
end

#this method depends on Gear responding to wheel and on wheel responding to diameter
#Enbeding this external dependency inside gear_inches is not neccessary
def gear_inches 
  foo = some_intermediate_result * wheel.diameter
end


#solution
def gear_inches
  foo = some_intermediate_result * diameter
end

def diameter
  wheel.diameter #<---- method called from the Wheel class
end