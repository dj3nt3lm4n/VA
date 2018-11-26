#Trip preparation becomes easier
class Trip
  attr_reader :bicycles, :customers, :vheicles

  def preparer (preparers)
    if preparer.kind_of?(Mechanic)
      preparer.prepare_bicycles(bicycle)
    elsif preparer.kind_of?(TripCoordinator)
      preparer.buy_food(customers)
      elsif preaprer.kind_of?(Driver)
        preparer.gas_up(vehicles)
        preparer.fill_water_tank(vehicle)
      end
  end
end

#when every preparer is a duck
#that responds to 'prepare_trip
class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each {|bicycle|
      prepare_bicycle(bicycle)}
  end
end

class TripCoordinator
  def preapare_trip(trip)
    buy_food(trip.customers)
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up (vehicle)
    fill_water_tank(vehicle)
  end
end
#The prepare method can now accept new 
#Preparers without being forced to change,
# and it’s easy to create additional Preparers if the need arises.
