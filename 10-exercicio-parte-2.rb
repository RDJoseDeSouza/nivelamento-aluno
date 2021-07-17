# 2) Esse aqui é um desafio. Faça um código para obter esse resultado:
#         *
#         **
#         ***
#         ****
#         *****
#         ******
#         *******
#         ********
#         *********
#         **********
vezes = 1
numero = 1
while numero < 11
       
    for espaco_em_branco in (1..9)
        print " "
    end
    for n in (1..vezes)
        print "*" 
        
        
    end
    puts
    numero = numero + 1
    vezes = vezes+ 1
end 