# 6) Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array,
#  contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.
#     Ex.:
#     print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
#     puts
#      (editado) 
def menor_maior(array)
    novo_array= []
    maior = array[0]
    menor = array[0]
    tamanho = array.size
    for n in (0..tamanho-1)
        if array[n] < menor
            menor = array[n]
        else
            next
        end
    end
        
    for i in (0..tamanho-1)
        if array[i] > maior
            maior = array[i]
        else
            next
        end
    end
    
    novo_array[0] = menor
    novo_array[1] = maior


    return novo_array
    
end
print menor_maior([10, 0, -1, -500, 1, 100 ]) # deve imprimir [-500, 100]
puts
print menor_maior([10, 100020,-1, -5200, 20,-110021, -109 ])
puts
print menor_maior([12, 0, 1, 500, 20,-2])
puts
print menor_maior([-10000, 0, 1, 500213, 20,-2])