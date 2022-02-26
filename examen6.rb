clientes = []
saldoTotal = 0

i = 0

while i != -1

    puts 'ingrese el numero de cuenta'
    numCuenta = gets.chomp

    puts 'ingrese la sucursal'
    sucursal = gets.chomp

    puts 'ingrese el nombre del cliente'
    nombre = gets.chomp

    puts 'ingrese el apellido del cliente'
    apellido = gets.chomp

    puts 'ingrese fecha de creacion de la cuenta'
    fecha = gets.chomp

    puts 'saldo de cuenta'
    saldo = gets.chomp

    numCuenta = numCuenta.to_i
    saldo = saldo.to_f
    
    datoCliente = [numCuenta, sucursal, nombre, apellido, fecha, saldo]
    clientes << datoCliente

    i = numCuenta
end

puts clientes.sort

clientes.each do |cliente|
    saldoTotal = saldoTotal + saldo
end

promedio = saldoTotal/clientes.length

clientes.each do |cliente|
   if saldo > promedio
       puts "El cliente #{nombre} #{apellido} tiene un saldo mayor al promedio y su saldo es: #{saldo}"
   end

   if numCuenta == 4500
       puts "El cliente #{nombre} #{apellido} tiene un saldo de $4500"
   end

   if sucursal == 'Gonnet'
    puts "El cliente #{nombre} #{apellido} tiene una cuenta en Gonnet"
   end

end

numCuenta = clientes.last[0] + 1
sucursal = 'La Plata'
nombre = 'Juan'
apellido = 'García'
fecha = '25/02/2022'
saldo = 100

datoCliente = [numCuenta, sucursal, nombre, apellido, fecha, saldo]

clientes << datoCliente


numCuenta = 3300
sucursal = 'Ensenada'
nombre = 'Ana'
apellido = 'Paus'
fecha = '25/02/2022'
saldo = 150

datoCliente = [numCuenta, sucursal, nombre, apellido, fecha, saldo]

clientes << datoCliente

clientes.each do |cliente|
    if numCuenta == 4500
        cliente.delete_at
    end
end

clientes.delete_at(3)

puts ' '
puts ' '
puts 'tabla final'
puts clientes.sort