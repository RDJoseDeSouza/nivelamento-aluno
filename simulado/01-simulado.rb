# 1) Cada maça custa R$ 0,30, porém, se levar ####3uma dúzia ou mais####, o preço de cada uma baixa para R$ 0,25.##
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro
#  a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.
# puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
# puts(preco_maca(12)) # deve imprimir 3.0
# puts(preco_maca(10)) # deve imprimir 3.0
def preco_maca(quantidade)
    valor_total=0
    if quantidade <= 0
        return nil
    elsif quantidade >= 12
        valor_total = quantidade * 0.25
        return valor_total
    else
        valor_total = quantidade * 0.30 
        return valor_total

    end
end
puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
puts(preco_maca(12)) # deve imprimir 3.0
puts(preco_maca(10)) # deve imprimir 3.0
puts(preco_maca(0))
puts(preco_maca(100))
puts(preco_maca(5))
puts(preco_maca(-10))


