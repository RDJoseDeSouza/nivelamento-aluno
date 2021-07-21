# 3) Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro
#  e deve retornar o valor da média aritmética entre todos os números do array.
#     puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0

def calcula_media(array)
    media = 0
    tamanho = array.size
    for n in(0..array.size-1)
        media = array[n] + media.to_f
    end
    media = media/tamanho
    return media
end
puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0


puts(calcula_media([10, 10, 10, 10, 10, 10]))

puts(calcula_media([1, 1, -1, 1, 1, 2]))

puts(calcula_media([1, -2, -3, 10, 0, 20]))
