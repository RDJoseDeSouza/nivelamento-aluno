# Exercicio 11
# 1) Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros e que deve retornar
# a posição da primeira ocorrência do valor no array. Se o valor não existir no array, retornar -1.
# Enviar o arquivo como 11-exercicio.rb
def posicao_no_array(array, verificar_numero)
    for posicao in (0..array.size-1)
        if array[posicao] == verificar_numero
            return true
            break
        end

    end
    return -1
end


numeros = [0, 1, 2, 2, 3, 4, 1, 12]
verificar_numero = 1
puts posicao_no_array(numeros, verificar_numero)
verificar_numero = 0
puts posicao_no_array(numeros, verificar_numero)
verificar_numero = 11
puts posicao_no_array(numeros, verificar_numero)
verificar_numero = 12
puts posicao_no_array(numeros, verificar_numero)
