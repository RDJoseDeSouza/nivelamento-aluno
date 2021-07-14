# Exercício 07
# Tomando como base a 1a versão do jogo de adivinhação (24-jogo.rb), 
#fazer uma nova versão do jogo de adivinhação que consiga validar se o valor digitado como chute do jogador é um dado válido ou não.
# Por exemplo, se o chute for um número fora do intervalo entre 0 e 100, ou se não for um valor numérico,
# o programa deve imprimir na tela uma mensagem de que o chute é inválido.
# Subir no GitHub como 07-exercício. (editado) 

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute = gets.chomp
#verificar_classe = chute
verificar = chute.to_i


if verificar.to_s == chute
    if chute.to_i < 0 || chute.to_i > 100 
        puts 'Chute invalido'

        elsif numero == chute.to_i

        puts "Acertou!"

        else

        puts "Errou!"
    end
    
else 

    
    puts 'chute invalido caractere'

    


       
    

    
end
