class Trip
  attr_reader :bicycles,:customers, :vehicles

  def  prepare(preparers)
    preparers.each {|preparer|
    casepreaparer
    when Mechanic
      preaprer.prepare_bicycles(bicyces)
    when TripCoordinator
      preparer.buy_food(customers)
    when Drier
      preparer.gas_up(vehicle)
      preaparer.fill_water_tank(vehicle)
    end
  }
 end   
end
#When you see this pattern you know that all of the preparers must share
#something in common; they arrive here because of that common thing

#------------------------------------------------------------------
#using kind_of? and is_a? 

if preparer.kind_of?(Mechanic)
  preparer.prepare_bicycles(bicycle)
elsif preparer.kind_of?(TripCoordinator) 
  preparer.buy_food(customers)
elsif preparer.kind_of?(Driver) 
  preparer.gas_up(vehicle) preparer.fill_water_tank(vehicle)
end

#Using kind_of? is no different than using a case statement 
#that switches on class; they are the same thing, theycause exactly the same problems,
#and they should be corrected using thesame tecniques.

#using responds_to?

if preparer.responds_to?(:prepare_bicycles)
   preparer.prepare_bicycles(bicycle)
elsif preparer.responds_to?(:buy_food) 
   preparer.buy_food(customers)
elsif preparer.responds_to?(:gas_up)
   preparer.gas_up(vehicle) 
   preparer.fill_water_tank(vehicle)
end

#this code decreases the number of dependencies
#but still has too many.
#class names are gone but hte codeis still very bound to class.
