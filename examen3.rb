i = 0
mayor = 0
menor = 0
documentos = []

while i!='000'
    puts 'agrege un nuevo dni o ingrese "000" para salir'
    dni = gets.chomp
    documentos << dni
    i=dni
end

documentos.each do |documento|
    if documento.length >= 8
        mayor = mayor + 1
    elsif documento.length < 8
        menor = menor +1
    end
end

puts "Los documentos ingresados son: #{documentos}"

puts "Hay #{mayor} Documentos que tienen cantidad de dígitos mayor o igual a 8"

puts "Hay #{menor} Documentos que tienen menos de 8 dígitos"