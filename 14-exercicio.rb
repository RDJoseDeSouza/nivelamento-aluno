def sortear_numeros(qtd, limite_inicio, limite_fim)
    array_sorteio = []
    maximo = 0
    sorteio = rand(limite_inicio..limite_fim)
    n = 0
    until maximo == qtd
        
        until n == qtd
            if array_sorteio[n] == sorteio
                sorteio = rand(limite_inicio..limite_fim)
                n = 0
                next
            else
                n = n+1
            end
        end
        array_sorteio[maximo] = sorteio
            
        maximo = maximo+1
        sorteio = rand(limite_inicio..limite_fim)

    end
    return array_sorteio
end

def correr_array_verificar(array, numero)
    verificar = false
    for n in (0..array.size-1)
        if numero == array[n]
            verificar = true
            break
        end
    end
    return verificar
end

def obter_apostas(qtd, limite_inicio, limite_fim)
    # implemente aqui!
    array_apostas = []
    posicao = 0
    until array_apostas.size == qtd
        print "digite o " + (posicao+1).to_s+ " numero: "
        colher_apostas = gets.chomp.to_i
        if colher_apostas < limite_inicio || colher_apostas > limite_fim || correr_array_verificar(array_apostas, colher_apostas)
            print "Numero digitado fora do escopo da aposta, digite novamente"
            puts
            
           
            
            next

        else
            
            array_apostas[posicao] = colher_apostas
            posicao = posicao+1
            puts
            next
        end
    end
    return array_apostas
end
# apostados = obter_apostas(6, 1, 60)
# print apostados

def verificar_acertos(sorteados, apostados)
    array_acertos = []
    verificar= 0
    acertou = 0

    until verificar == sorteados.size
        
        for n in (0..apostados.size-1)
            if sorteados[verificar]== apostados[n]
                array_acertos[acertou] = apostados[n]
                acertou = acertou + 1

            else
                next
            end

        end


        verificar = verificar+1
    end
    return array_acertos
end
def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
   
    apostados = obter_apostas(6, 1, 60)
    
    acertados = verificar_acertos(sorteados, apostados)
   
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end
puts "Programa de apostas"
print "Digite sua sequencia: "
puts
mega_sena()