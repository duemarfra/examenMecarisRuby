productos = []
nAlfajor = 0
nMermelada = 0
valMermelada = 0
mayA = -1000000
codMayA = 0
mayM = -1000000
codMayM = 0
i=0

while i != '9999'

    puts 'ingrese un codigo de producto'
    cod = gets.chomp

    puts 'ingrese un  tipo (alfajor o mermelada)'
    tipo = gets.chomp

    puts 'ingrese la cantidad de unidades fabricadas'
    cantidad = gets.chomp

    puts 'ingrese un valor de producto'
    valor = gets.chomp

    cantidad = cantidad.to_i
    valor = valor.to_f
    
    producto = [cod, tipo, cantidad, valor]
    productos << producto

    i = cod
end

productos.each do |produc|

    if produc.include?('alfajor')
        nAlfajor = nAlfajor + produc[2]

        if produc[2] > mayA
            mayA = produc[2]
            codMayA = produc[0]
        end
    end

    if produc.include?('mermelada')
        nMermelada = nMermelada + produc[2]
        valMermelada = valMermelada + produc[3]

        if produc[2] > mayM
            mayM = produc[2]
            codMayM = produc[0]
        end
    end
end

puts "La cantidad de alfajores fabricados para el mes es: #{nAlfajor}"
puts "El Precio promedio de las mermeladas es: #{valMermelada/nMermelada}"
puts "El codigo de el producto con mayor cantidad de alfajores fabricadas es: #{codMayA}"
puts "El codigo de el producto con mayor cantidad de mermeladas fabricadas es: #{codMayM}"