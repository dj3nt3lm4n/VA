class MeValeDick

  puts "ingresa un numero: "
  x = gets.chomp.to_i
  puts "ingresa el segundo numero: "
  y = gets.chomp.to_i
  puts  "selecciona la operacion: + para suma, - para resta, * para multiplicación, / para divición"
  operator = gets.chomp()
  
   op = Operations.new(x, y) 
  case operator
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