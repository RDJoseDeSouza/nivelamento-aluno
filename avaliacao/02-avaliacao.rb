# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e 
# deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre os 
# elementos que ocupam a  mesma posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.
def multiplica_arrays(array_um, array_dois)
    multiplicacao = 0
    soma = 0
    if array_um.size == array_dois.size
        for i in (0..array_dois.size-1)
            multiplicacao = array_um[i]*array_dois[i]
            soma = soma + multiplicacao
        end
    else
        return nil
    end
    return soma
end
puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
puts multiplica_arrays([1, 2, 3], [30, 30, 30]) # deve imprimir 140
puts multiplica_arrays([1, 2, 3], [10, 20, 30, 1]) == nil 
puts multiplica_arrays([1, 1, 1], [1, 0, 0]) # deve imprimir 140

