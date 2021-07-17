# 3) Desenhar uma pirâmide. O tamanho da base deve ser informado. Se o tamanho da base for numero par,
# o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*"
# que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************
# Enviar como 10-exercicio-parte-3.rb



def chamar_piramede (linhas,asteriscos,espaco)
    for vazio_linhas in (1..linhas)
        print " "*espaco
        espaco = espaco - 1
        for piramede in (1..linhas)
            print "*"*asteriscos
           asteriscos =  asteriscos + 2
           break
        end
        puts

    end
    return nil
end
print "Digite um numero: "
numero_base= gets.to_i
espaco = 0
linhas = numero_base / 2
asteriscos = 2
if numero_base % 2 == 0
    espaco = numero_base/2
    #numero da base é par
    # for vazio_linhas in (1..linhas)
    #     print " "*espaco
    #     espaco = espaco - 1
    #     for piramede in (1..linhas)
    #         print "*"*asteriscos
    #        asteriscos =  asteriscos + 2
    #        break
    #     end
    #     puts

    # end
    chamar_piramede(linhas,asteriscos,espaco)

else
   asteriscos = 1
   linhas = linhas + 1
   espaco = numero_base/2 + 1
  
   chamar_piramede(linhas,asteriscos,espaco)


end
#while numero < 10
