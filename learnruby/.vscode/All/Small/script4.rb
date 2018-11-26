class Operations 

  def initialize(x,y)
    @x = x
    @y = y
    end

  def suma
    puts @x+@y.to_i
    end
    
  def resta
    puts @x-@y.to_i
  end

  def multi
    puts @x*@y.to_i
    end

  def divicion
    puts @x/@y.to_f
  end

end

op = Operations.new(10, 20)

op.suma
op.resta
op.multi
op.divicion

