puts "Programa para calcular o (Mínimo Múltiplo Comum) entre dois valores."
print "Digite um numero: "
primeiro_numero = gets.to_i
puts
print "Digite outro numero: "
segundo_numero = gets.to_i
puts
numero = 1
numero_dois=1
valor_primeiro=primeiro_numero
valor_segundo=segundo_numero

condicao = false
if segundo_numero != primeiro_numero
  
    while condicao == false
        if   valor_primeiro < valor_segundo
            valor_primeiro = primeiro_numero * numero 

            numero =  numero + 1
            #puts valor_primeiro
            next
            
        

        elsif  valor_primeiro > valor_segundo
            valor_segundo = segundo_numero * numero_dois
            numero_dois =  numero_dois + 1
            #puts valor_segundo
     
            next
    
        elsif valor_primeiro == valor_segundo
            puts valor_primeiro
            
            condicao = true
              
    
        end
    
        
    end

else
  puts segundo_numero

    
end

        