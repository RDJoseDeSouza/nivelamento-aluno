# Exercicio 12
# Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer e a posição alvo 
# como parâmetros e que deve inserir o valor informado na posição alvo, de modo a 'empurrar para a frente' 
# os demais elementos e ao final retornar true. Se a posição alvo não estiver no limite do array, a função deve retornar false.
# Enviar como 12-exercicio.rb


def exibe_array(array)
    for n in (1..array.size-1)
        print array[n]
        print ", "
    end
    puts
end

def insere_no_array(array, valor, posicao)
    
    if array.size-1 <= posicao

        return false
    else
        n = array.size
        until n-1 == posicao
            array[n] = array[n-1]
            n = n-1


        end

        array[n]= valor
        return true
    end
end

numeros = [1, 3, 11, 12, 13, 14, 10, -1]
# puts numeros.size
print "Digite uma posiçao para adicionar no array: "
posicao = gets.chomp
posicao = posicao.to_i
# puts posicao.class
# puts numeros.size.class
print "Digite um valor para adicionar nessa posição: "
valor = gets.chomp
puts "Se o valor foi adicionado ele deve retornar true "
exibe_array(numeros)
puts insere_no_array(numeros, valor, posicao)
exibe_array(numeros)
