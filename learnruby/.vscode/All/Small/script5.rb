class Operations 
puts "inserete un number: "
x = gets.chomp().to_i
puts "inserte otro numero: "
y = gets.chomp().to_i
puts "selecciona la operacion: + para suma, - para resta, * para multiplicación, / para divición"
operation = gets.chomp()

case operation
when "+"
puts "la suma es: #{x+y.to_i}"
when "-"
puts "la resta es: #{x-y.to_i}"
when "*"
puts "la multiplicación es: #{x*y.to_i}"
when "/" 
puts "la multiplicación es: #{x/y.to_f}"
end
  
end
