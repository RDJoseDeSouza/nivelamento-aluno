
def verficacao_de_dados(taxa_vacinacao,fator_transmissao,taxa_ocupacao_leitos)
    
    if taxa_vacinacao < 0 || taxa_vacinacao > 1.0  || fator_transmissao < 0.0 || taxa_ocupacao_leitos < 0.0 || taxa_ocupacao_leitos > 1.0

        if taxa_vacinacao < 0 || taxa_vacinacao > 1.0 
        return "taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"
        
        elsif fator_transmissao < 0.0
              
        return "fator de transmissão dever ser um número maior ou igual a zero"
        elsif taxa_ocupacao_leitos < 0.0 || taxa_ocupacao_leitos > 1.0

        return "taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)"

        end           
    else
        
    return nil
    
    end
        
end
    

 def fase_pandemica(taxa_vacinacao, fator_transmissao, taxa_ocupacao_leitos)

    
    if verficacao_de_dados(taxa_vacinacao,fator_transmissao,taxa_ocupacao_leitos) == nil

        if taxa_vacinacao > 0.8 && taxa_vacinacao <= 1
        return "fase Azul"


        elsif taxa_ocupacao_leitos <= 0.5 && fator_transmissao < 1.0 
        return "fase Verde"


         elsif taxa_ocupacao_leitos > 0.5 && taxa_ocupacao_leitos <= 0.65 && fator_transmissao < 1.0
        return "fase Amarela"


         elsif taxa_ocupacao_leitos > 0.65 && taxa_ocupacao_leitos <= 0.8 && fator_transmissao < 1.0
        return "fase Laranja"

    
        elsif taxa_ocupacao_leitos > 0.8 && taxa_ocupacao_leitos <= 0.9 || fator_transmissao >= 1.0 && taxa_ocupacao_leitos <= 0.9
        return "fase vermelha"

    

        else 

         return "Roxa"

        end

  
    else

     
    return verficacao_de_dados(taxa_vacinacao,fator_transmissao,taxa_ocupacao_leitos)
    
    end
end

puts "Para calcular a fase da pandemia, Por favor insira os valores solicitados:"
puts 
print "Por favor digite a Taxa de vacinação atual da população: "
taxa_vacinacao = gets.to_f


puts
print "Por favor digite o fator atual de transmissão: "
fator_transmissao = gets.to_f  



puts
print "Por favor digite a Taxa de ocupação dos leitos de UTI atuais: "
taxa_ocupacao_leitos = gets.to_f

puts fase_pandemica(taxa_vacinacao,fator_transmissao,taxa_ocupacao_leitos)

