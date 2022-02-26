productos = []
may = -1000000
men = 1000000
codMay = 0
codMen = 0

i = 0

while i<100

    puts 'ingrese un codigo de producto'
    cod = gets.chomp

    puts 'ingrese un nombre o tipo de producto'
    nombre = gets.chomp

    puts 'ingrese un valor de producto'
    valor = gets.chomp

    cod = cod.to_i
    valor = valor.to_f
    
    producto = [cod, nombre, valor]
    productos << producto

    i=i+1
end

productos.each do |produc|

    if produc[2] < men
        men = produc[2]
        codMen = produc[0]
    end

    if produc.include?('pantalon')
        if produc[2] > may
            may = produc[2]
            codMay = produc[0]
        end
    end
    
end

puts "El codigo del producto mas barato es: #{codMen}"
puts "El codigo del pantalon mas caro es: #{codMay}"