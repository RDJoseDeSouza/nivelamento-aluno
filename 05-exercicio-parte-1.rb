
# - o diâmetro de um círculo é 2x o seu raio
# - o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# - a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja perguntado ao usuário.

def calcular_diametro(raio)
    diametro = raio*2
    return diametro
end

def calcular_comprimento(raio)
    comprimento = calcular_diametro(raio)*Math::PI
    return comprimento
end

def calcular_area(raio)
    area = raio**2*Math::PI
    return area
end
puts ""
puts "Para calcular o diametro de um circulo por favor digite a baixo o seu raio!"
print "Digite o Raio (favor digitar apenas numeros): "
raio = gets.to_f
puts "O diametro de um raio valor " +raio.to_s+ " é de :" +calcular_diametro(raio).truncate(2).to_s
puts 
puts
puts "Agora, vamos calcular o Comprimento de um circulo!"
print "Novamente digite o valor do raio (numeros!): "
raio_comprimento = gets.to_f
puts "O comprimento de um raio valor " +raio_comprimento.to_s+ " é de :" +calcular_comprimento(raio_comprimento).truncate(2).to_s
puts
puts
print "E para descobrir a area de um circulo digite seu raio: "
raio_area = gets.to_f
puts 'A area de um circulo com um raio de valor ' +raio_area.to_s+ " é de :" +calcular_area(raio_area).truncate(2).to_s
