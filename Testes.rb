# puts "concatençao se faz " + "\"+\" " + "segunda parte"
def menor_maior(array)
    novo_array= []
    maior = 0
    menor = 0
    
    tamanho =array.size-1
    
    a = 0
    b = 0
    passa = 0
    until a == tamanho
        if array[a] > array[passa] # 10>10  !\ 10 > 0 = 0 \ 0>10! \0>0! \ 0>-1 = -1/ -1>10! /-1>0! / -1>-1 ! / -1 >-500 = -500/ 4../ -500>20 ! /5/-500>100!/passa=6
            menor = array[passa]
            a = a + 1
            # b = 0
            passa = 0

            next
            

        else
            # b = b  + 1
            passa = passa + 1

            
        end
    end
    a = 0
    b = 0
    passa = 0
    until a == tamanho
        if array[a] < array[passa] # 10>10  !\ 10 > 0 = 0 \ 0>10! \0>0! \ 0>-1 = -1
            maior = array[passa]
            a = a + 1
            # b = 0
            passa = 1
            next

        else
            # b = b  + 1
            passa = passa + 1
            
            
        end
    end

    novo_array[0] = menor
    novo_array[1] = maior
    return novo_array
end
print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
puts
print(menor_maior([10, 100020, -1, -5200, 20,-110021,01]))
puts
print(menor_maior([12, 0, 1, 500, 20,-2]))
puts