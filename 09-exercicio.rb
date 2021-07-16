# computador pensando no número...
numero = rand(0..100)
#puts "(" + numero.to_s + ")"
puts "Jogo da adivinhaçao "
puts "Tente acertar o numero que o computador adivinhou entre 0 e 100!"
print "digite o número: "
chute = gets.chomp
#verificar_classe = chute
verificar = chute.to_i

def verificar_chute(chute, verificar, numero)
    
    
   retorno = "" 
    if verificar.to_s == chute
       if chute.to_i < 0 || chute.to_i > 100 
         retorno = 'Chute invalido'
        elsif numero == chute.to_i

         retorno = "Acertou!"

        else

         retorno = "Errou!"
        end
    else 
        retorno = 'chute invalido caractere'

    end
    return retorno

end
resultado = verificar_chute(chute,verificar,numero)

if verificar_chute(chute,verificar,numero) == resultado
contador = 1
acertou = false
    while acertou == false

        if resultado == "Errou!"
            puts "Errou!"
            if chute.to_i > numero
              puts "O número adivinhado pelo computador é menor que a tentativa!"
            else
             puts"O número digitado é menor que o número adivinhado pelo computador!"
            end
                

        
            print "tente novamente: "
        
            chute = gets.chomp

            verificar = chute.to_i
            resultado = verificar_chute(chute,verificar,numero)
            contador = contador + 1
            next

        elsif resultado == 'Chute invalido, Caractere digitado incorreto !!'

            puts "Caractere invalido"
            print "Tente novamente: "
            chute = gets.chomp

            verificar = chute.to_i
            resultado = verificar_chute(chute,verificar,numero)
            next

        elsif resultado == 'Chute invalido'
            puts 'Chute não esta dentro dos Parametros 0 a 100'
            print "Tente novamente: "
            chute = gets.chomp

            verificar = chute.to_i
            resultado = verificar_chute(chute,verificar,numero)

        elsif resultado == "Acertou!"
            puts "Parabéns você acertou!!!"
            contador + 1
            puts "Você acertou na " +contador.to_s + " tentativa!"

            acertou = true

        end
        
    end

end





