# Exercicio 13
# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, a função retorna o array inteiro.
# Enviar como 13-exercicio.rb
def remove_da_posicao (array, posicao)
    novo_array = [] 
    if array.size-1 <= posicao || array[0] == array[posicao]
        return array
    else
        n = 0
        novo = 0
        until n == array.size
            if n == posicao
                novo_array[posicao] = array[n+1]
                n = n+1

                next
            else
                novo_array[novo] = array[n]
                n=n+1
                novo = novo+1 
            end
            
        end
        return novo_array
    end
end


def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
        print ", "
        end
    end
    puts
end

puts "posiçaõ do array a ser deletado!!"
numeros = [1, 3, 11, 12, 13, 14, 10, -1]
exibe_array(numeros)
print "selecione uma posição: "
posicao = gets.chomp.to_i



numeros = remove_da_posicao(numeros,posicao)
exibe_array(numeros)
print numeros

