class Bicycle
  attr_reader :size #<- promoted from RoadBike

  def initialize(args={})
    @size = args[:size] #<- promoted from RoadBike
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args) #<- RoadBikenow must send 'super'
  end
  #...
end

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

road_bike = RoadBike.new(
  size:  'M',
  tape_color: 'red')

puts road_bike.size 

mountain_bike = MountainBike.new(
  size: 'S',
  front_shock: 'manitou',
  rear_shock:  'fox')

puts mountain_bike.size
#Roadbike now inherits the size method from Bicycle. when a RoadBike recives
#size, Ruby itself delegates the message up the superclas chain, searching for
#an implementationandfinding the one in Bicycle.