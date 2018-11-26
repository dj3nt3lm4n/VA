class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "this #{schedulable.class} " +
    "is not scheduled" + " between #{start_date} and #{end_date}"
    false
  end
end

class Bicycle
  attr_reader :schedule, :size, :chain, :tire

  def initialize (args={})
    @schedule = args[:schedule] || Schedule.new
    @size     = args[:size]
    @chain    = args[:chain]
    @tire     = args[:tire]
  end

  # Return true if this bicycle is available
  # during this (now Bicycle specific) interval.
  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  #Return the schedule's answer
  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  # Return the number of lead_days before a bicycle
  # can be scheduled
  def lead_days
    1
  end

end

require 'date'
starting = Date.parse("2018/07/22")
ending   = Date.parse("2018/07/28")

b = Bicycle.new
b.schedulable?(starting, ending)