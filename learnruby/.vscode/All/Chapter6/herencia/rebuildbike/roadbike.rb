require "./bicycle.rb"

class ReadBike < Bicycle
  attr_reader  :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args)
  end

  def default_tire_size
    '23'
  end
end