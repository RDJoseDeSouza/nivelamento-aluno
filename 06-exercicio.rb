
# As regras para definição de cada fase são as seguintes:
# - FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
# Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos) e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.
# Ex.: ao executar o seguinte comando:
# fase_pandemica(0.1, 0.7, 0.5)
# Deve retornar a string "VERDE".
# Obs.: validar os parâmetros, considerando as seguintes regras:
# - taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# - fator de transmissão dever ser um número maior ou igual a zero
# - taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
# Se houver alguma invalidação nas regras acima, retornar uma string que descreva a regra que foi invalidada.
# Obs. 2: escreva testes para demonstrar que o sistema está funcionando.
def fase_pandemica(taxa_vacinacao, fator_transmissao, taxa_ocupacao_leitos)
    fase = ""
 # - FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
    if taxa_vacinacao > 0.8 
        fase="Azul"

#FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator de transmissão menor que 1.
         elsif taxa_ocupacao_leitos <= 0.5 && fator_transmissao < 1.0 
        fase = "Verde"

# - FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de transmissão menor que 1.
          elsif    taxa_ocupacao_leitos > 0.5 && taxa_ocupacao_leitos <= 0.65 && fator_transmissao < 1.0
        fase = "Amarela"

# - FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de transmissão menor que 1.
         elsif taxa_ocupacao_leitos > 0.65 && taxa_ocupacao_leitos <= 0.8 && fator_transmissao < 1.0
        fase="Laranja"
# - FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
    
         elsif taxa_ocupacao_leitos > 0.8 && taxa_ocupacao_leitos <= 0.9 || fator_transmissao >= 1.0 && taxa_ocupacao_leitos <= 0.9
        fase="vermelha"

    

         else #taxa_ocupacao_leitos > 0.9 # - FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.

         fase = "Roxa"
    end

    return fase
end

# puts fase_pandemica(0.1, 0.7, 0.5) deu certo!!

#Dados a serem capiturados
# 1) A taxa de vacinação da população.
# 2) O fator de transmissão do vírus.
# 3) A taxa de ocupação dos leitos de UTI.
puts "Para calcular a fase da pandemia, Por favor insira os valores solicitados:"
puts 
print "Por favor digite a Taxa de vacinação atual da população: "
taxa_vacinacao = gets.to_f
    if taxa_vacinacao < 0 || taxa_vacinacao > 1.0 
    puts "taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"
    
    else
        puts
        print "Por favor digite o fator atual de transmissão: "
        fator_transmissao = gets.to_f  
        #fator de transmissão dever ser um número maior ou igual a zero
        if fator_transmissao < 0.0
            puts
            puts"fator de transmissão dever ser um número maior ou igual a zero"
        else
        
            puts
            print "Por favor digite a Taxa de ocupação dos leitos de UTI atuais: "
            taxa_ocupacao_leitos = gets.to_f  #taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
            if taxa_ocupacao_leitos < 0.0 || taxa_ocupacao_leitos > 1.0
                puts
                puts "taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"
                
            else

                puts
                fase_atual = fase_pandemica(taxa_vacinacao, fator_transmissao, taxa_ocupacao_leitos)
                puts "Atualmente Estamos então na fase: " + fase_atual  
            end    
        end
    end