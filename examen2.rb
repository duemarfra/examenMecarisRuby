puts 'ingrese un número'
num1 = gets.chomp
puts 'ingrese un operador'
operador = gets.chomp
puts 'ingrese otro número'
num2 = gets.chomp


num1 = num1.to_f
num2 = num2.to_f

case operador
when '+'
    resultado = num1 + num2
when '-'
    resultado = num1 - num2
when '*'
    resultado = num1 * num2
when '/' 
    resultado = num1 / num2
when '%'
    resultado = num1 % num2
else
    puts 'operador incorrecto solo se admite +, -, *, /, %'
end

puts "#{num1} #{operador} #{num2} = #{resultado}"