    dia = 365
    horas = 24
    minutos = 60
    segundos = 60
    decada = 10
    minhaIdade = 22
    meusSegundos = 1232000000.0

puts
puts "Quantas horas há em um ano?"
puts 
puts " Em um ano tem: " + (dia*horas).to_s + " horas"
puts 
puts
puts "Quantos minutos há em uma década?"
puts
puts " Em uma década há: " + (decada*dia*horas*minutos).to_s + " minutos"
puts
puts            
puts "Qual é a sua idade em segundos?"
puts 
puts "Se minha idade é " + (minhaIdade).to_s + " anos, logo em segundos será: "
puts " " + (minhaIdade*dia*horas*minutos*segundos).to_s + " segundos"
puts
puts
puts "Quantos chocolates você pretende comer na vida?"
puts 
puts " Eu pretendo comer chocolate até o final da minha vida", " em quantidades que só dinheiro irá limitar ou as doenças"
puts
puts
puts "Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?" 
puts 
puts " Em anos eu tenho aproximadamente: " + (meusSegundos/dia/horas/minutos/segundos).to_s + " anos"

