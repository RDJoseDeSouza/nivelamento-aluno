# 1) Faça um programa para calcular a boa e velha tabuada.
# Pergunte ao usuário qual o número que ele quer o cálculo da taboada e imprima na tela os resultados.
# Por exemplo:
# Se o usuário digitar 7, deve imprimir dessa forma:
# 7 x 1 = 7
# 7 x 2 = 14
# 7 x 3 = 21
# ... até
# 7 x 10 = 70
def calcular_tabuada(numero)
    
    for tabuada in (1..10)

    
    resultado = numero * tabuada
    puts numero.to_s + " x " + tabuada.to_s + " = " + resultado.to_s

    end
    return "fim"
end

puts "Programa para calcular tabuada de um numero."
print "Digite um numero: "
numero = gets.to_i
puts "A tabuada do " + numero.to_s+ " é:"

puts calcular_tabuada(numero)