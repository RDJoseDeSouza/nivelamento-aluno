# 3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada e
# #  deve retornar um array de strings para representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. Caso contrário, a função 
# # deve retornar um array vazio.
# Ex.:
def altura_escada(altura)
    array_escada = [ ]
    linha = ""
    escada = ""
    jogo_da_velha = 1
    under_score = 0
    if altura > 1 || altura == 1
        if altura == 1
           return array_escada[0] =  "#"
        else
            for n in (0..altura-1)
                under_score = altura-jogo_da_velha
                linha= "_"*under_score
                escada= "#"*jogo_da_velha

                array_escada[n] = linha+escada
                jogo_da_velha = jogo_da_velha + 1

            end
        end
    elsif altura < 1
        return array_escada

    end
    return array_escada
end




puts(altura_escada(1))
# # deve imprimir
# #

puts(altura_escada(2))
# # deve imprimir
# _#
# ##
puts(altura_escada(3))
# # deve imprimir
# __#
# _##
# ###
puts(altura_escada(5))
# # deve imprimir
# ____#
# ___##
# __###
# _####
# #####
puts(altura_escada(0))
# # deve imprimir nada, pois tem que retornar um array vazio
puts(altura_escada(10))

