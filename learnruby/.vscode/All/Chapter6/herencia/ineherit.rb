require "./mountainbike.rb"

class MountainBike < Bicycle
  attr_reader :front, :rear_shock

  def initialize(args)
    @front = front
    @rear_shock = rear_shock    
    super args
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