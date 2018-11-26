#inheritance
class Bicycle
  attr_reader :style, :size, :tape_color,
              :front_shock, :rear_shock

  def initialize (args)
    @style        = args[:style]
    @size         = args[:size]
    @tape_color   = args[:tape_color]
    @front_shock  = args[:front_shock]
    @rear_shock   = args[:rear_shock]
  end

  #checking "style" starts down a slippery slope
  def spares
    if style == :road
      { chain:       '10-speed',
        tire_size:   '23',     # milimeters
        tape_color:  tape_color }
    else
      { chain:     '10-speed',
        tire_size: '2.1',      # inches
        rear_shock: rear_shock }
    end
  end
end

#this is a new subclass is a direct descendent of the original bicycle class.
#it implements two methods, initialize, and spares. Both methods are already 
#implemented in bicycle, therefore, thei are said to be overriden by MountainBike.
class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock
  def initialize(args)
    @front_shock = args[:front_shock] 
    @rear_shock = args[:rear_shock] 
    super(args)
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end 
end

mountain_bike = MountainBike.new(
                size: 'S',
                front_shock: 'Manitou',
                rear_shock:  'Fox')
  
puts mountain_bike.size
puts mountain_bike.spares
