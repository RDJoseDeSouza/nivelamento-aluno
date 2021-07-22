# (valor = 1.5)
# 1) Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o 
# produto resultante entre eles (a multiplicação de todos os elementos entre si).
# Ex.:
# puts(produto([1, 4, 7]))               # deve imprimir 28
# puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
def produto(array)
    multiplicacao = array[0]
    if array.size == 1
        return multiplicacao
    else
        for i in (1..array.size-1)
            multiplicacao = multiplicacao *array[i]
            
        end
    end
        
       
    return multiplicacao
end
puts(produto([1, 4, 7]))               # deve imprimir 28
puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
puts(produto([0, 100, -1, 0, -1]))
puts(produto([5, 100, -1, 2 , 1]))
puts(produto([0]))
puts(produto([1000, 10]))