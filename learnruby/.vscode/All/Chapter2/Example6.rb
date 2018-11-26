#this example is only demonstrative
class ObscuringReferences 
  attr_reader :data
  def initialize(data)
    @data = data 
  end
  
  def diameters
    # 0 is rim, 1 is tire 
    data.collect {|cell|
      cell[0] + (cell[1] * 2)} 
  end
   # ... many other methods that index into the array
  end
  # the class expects to be initialize with a 2D array
  # rim and tire sizes (now in millimeters!) in a 2D array
  @data = [[622, 20], [622, 23], [559, 30], [559, 40]]

class RevealingReferences 
    attr_reader :wheels 
  def initialize(data)
    @wheels = wheelify(data) 
  end
  
  def diameters
    wheels.collect {|wheel|
      wheel.rim + (wheel.tire * 2)}
  end
  # ... now everyone can send rim/tire to wheel

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.collect {|cell|
    Wheel.new(cell[0], cell[1])}
    end
end

#-------------------------------------------------------------------------
# Giving single responsibility
def diameters
  wheels.collect {|wheel|
    wheel.rim + (wheel.tire * 2)}
end

# first - iterate over the array
def diameters
  wheels.collect {|wheel| diameter(wheel)}
end

# second - calculate diameter of ONE wheel
def diameter(wheel)
  wheel.rim + (wheel.tire * 2)
end

#---------------------------------------------------------------------------
def gear_inches
   #tire goes around rim twice for diameter
   ratio * (rim + (tire * 2))
end

def gear_inches
  ratio * diameter
end

def diameter
  rim * (tire * 2)
end