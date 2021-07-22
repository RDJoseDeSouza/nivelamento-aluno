# 4) As árvores utópicas crescem de uma forma particular, em dois ciclos:
# A cada primavera, dobram seu tamanho.
# A cada verão, crescem um metro.
# Se uma árvore utópica é plantada com um metro no final do outono, qual seria sua altura depois de N ciclos?
# Exemplo:
# Se N = 0, altura será 1 metro (não cresceu nada)
# Se N = 1, altura será 2 metros (dobrou a altura na primavera)
# Se N = 2, altura será 3 metros (cresceu mais 1 metro no verão)
# Se N = 3, altura será 6 metros (dobrou a altura na primavera seguinte)
# E assim por diante...
# Defina a função “altura_arvore_utopica”, que recebe a altura inicial da árvore utópica plantada no final
#  do outono e a quantidade de ciclos de crescimento, e que retorne a altura resultante após a quantidade de ciclos 
#     de crescimento informada.
# Valide a altura inicial (que não pode ser zero ou menor) e a quantidade de ciclos (que não pode ser negativo). 
# Caso a validação falhar, a função deve retornar nil.
# puts(altura_arvore_utopica(2, 5))
# # deve imprimir 22 
# # pois a altura da árvore iniciou com 2, após 1º ciclo foi para 4, 
# # após 2º foi para 5, após 3º foi para 10, após 4º foi para 11 e 
# # após 5º foi para 22.
# puts(altura_arvore_utopica(0, 5))
# # deve imprimir nada, pois retornou nil 
# puts(altura_arvore_utopica(10, -1))
# # deve imprimir nada, pois retornou nil 
# puts(altura_arvore_utopica(2, 4))
# deve imprimir 11
def altura_arvore_utopica (altura_inicial, ciclos)
    altura = altura_inicial
    if altura_inicial <= 0 || ciclos < 0
        return nil
    else
        for n in (1..ciclos)
            if n%2 == 0
                altura = altura + 1
            else
                altura = altura * 2
            end
        end
        return altura
    end
end
puts(altura_arvore_utopica(10, 2))
puts(altura_arvore_utopica(2, 5))
puts(altura_arvore_utopica(0, -1))
puts(altura_arvore_utopica(2, 4))
puts(altura_arvore_utopica(10, -1))
puts(altura_arvore_utopica(1, 0))