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

class Selector
  def initialize(x,y,operator)
    @x = x
    @y = y
    @operator = operator
  end

def select
 op = Operations.new(@x,@y) 
case @operator
when "+"
  op.suma
when "-"
  op.resta
when "*"
  op.multi
when "/"
  op.divicion
end
end

end

puts "ingresa un numero: "
x = gets.chomp.to_i
puts "ingresa el segundo numero: "
y = gets.chomp.to_i
puts  "selecciona la operacion: + para suma, - para resta, * para multiplicación, / para divición"
operator = gets.chomp()

sel = Selector.new(x,y,operator)
sel.select