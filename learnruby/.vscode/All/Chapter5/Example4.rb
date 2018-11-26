#in this case preparation becomes more complicated
#this is not a goodway to write a code
#programmers who do this are blinded by existing classes and neglect
#to notice taht they have overloked important messages.
class Trip
  attr_reader :bicycles, :customers, :vehicle

  # this 'mechanic' argument could be of any class
def preparer (preparers)
  preparers.each {|preparer|
  case preparer
  when Mechanic
    preparer.prepare_bicycles(bicycles)
  when TripCoordinator
    preparer.nuy_food(customers)
  when Driver
  preparer.gas_up(vehicle)
  preparer.fill_water_tank(vehicle)
  end
}
end
end

# when you introduce TripCoordinator and Driver
class TripCoordinator
  def buy_food(customers)
    puts "se compro pinches comida"
  end
end

class Driver
  def gas_up(vehicle)
    puts "se lleno pinches gasopa"
  end

  def fill_water_tank(vehicle)
    puts "se lleno el pinche tanquee de agua"
  end
end

p = Driver.new()
p.gas_up("carcancha")