# 1) O diâmetro de um círculo é 2x o seu raio.
# 2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# 3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva funcões para calcular o diâmetro, o comprimento e a área de um círculo com base no valor do seu raio.
# Ou seja, escreva uma função para cada cálculo, considerando que o raio será informado na chamada de cada função.
# Importante: evite duplicação de código!
# Dica: no Ruby, a constante PI é fornecedida por 'Math::PI' (rode um 'puts Math::PI' no 'irb' para ver o que aparece)
# Escreva códigos para testar cada uma das funções.
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


valor_raio = 2
puts "O diametro de um circulo cujo seu raio é 2 é igual à: " + calcular_diametro(valor_raio).to_s
puts
valor_raio = 6
puts "O diametro de um circulo cujo seu raio é 6 é igual à: " + calcular_diametro(valor_raio).to_s
puts
valor_raio = 10
puts "O diametro de um circulo cujo seu raio é 10 é igual à: " + calcular_diametro(valor_raio).to_s
puts
puts


puts"O comprimento de um circulo de raio valor 4 é: " + calcular_comprimento(4).to_s
puts
puts"O comprimento de um circulo de raio valor 7 é: " + calcular_comprimento(7).to_s
puts
puts"O comprimento de um circulo de raio valor 10 é: " + calcular_comprimento(10).to_s
puts
puts


valor_raio = 10
puts"A área de um circulo cujo valor do raio é 10 é: "  +calcular_area(valor_raio).to_s
puts
valor_raio = 1
puts"A área de um circulo cujo valor do raio é 1 é: "  +calcular_area(valor_raio).to_s
puts
valor_raio = 5
puts"A área de um circulo cujo valor do raio é 5 é: "  +calcular_area(valor_raio).to_s