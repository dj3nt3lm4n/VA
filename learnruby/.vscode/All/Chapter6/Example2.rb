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

bike = Bicycle.new(
  style:            :mountain,
  size:             's',
  front_shock:      'manitou',
  rear_shock:       'Fox')

puts bike.spares

#this code makesdecisionsabout spare parts basedon the value held in style;
#structuring the code this way has many negative consequences.
#if you write careless code where the last option is the dafault (as does the code
#bove) an unexpected style will do something but perhaps not what you expected.