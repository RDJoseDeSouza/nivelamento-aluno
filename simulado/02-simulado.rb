# 2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve retornar outro array 
# com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

def negativos_positivos(array)
    novo_array = []
    positivos = 0
    negativos = 0
    zeros = 0
    quantidade = array.size

    for n in (0..array.size-1)
        if array[n] == 0
            zeros = zeros+1
        elsif array[n] > 0
            positivos = positivos + 1
        elsif array[n] < 0
            negativos = negativos + 1
        end
    end

    novo_array[0] = positivos*100/quantidade.to_f/100
    novo_array[1] = zeros*100/quantidade.to_f/100
    novo_array[2] = negativos*100/quantidade.to_f/100
    return novo_array

end

print(negativos_positivos([1, 2, 0, -1]))
print("\n")
# deve imprimir o array [0.5, 0.25, 0.25]
# pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos
print(negativos_positivos([-2, 2, -1, -1]))
print("\n")
print(negativos_positivos([0, 0, 0, -1]))
print("\n")
print(negativos_positivos([1, 2, 0, -1, 2, 0, -2, 0 ]))
print("\n")
print(negativos_positivos([1, 2, 2, 1001]))
print("\n")