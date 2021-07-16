puts "Programa para calcular o (Mínimo Múltiplo Comum) entre dois valores."
print "Digite um numero: "
primeiro_numero = gets.to_i
puts
print "Digite outro numero: "
segundo_numero = gets.to_i
puts

# valor_primeiro=primeiro_numero
# valor_segundo=segundo_numero
def calcular_mmc(primeiro_numero, segundo_numero)
    condicao = false
    valor_primeiro = primeiro_numero
    valor_segundo = segundo_numero
    numero = 1
    numero_dois=1
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
           
            
            condicao = true
            return valor_primeiro
              
    
        end

    end
   
end

if segundo_numero == primeiro_numero
    puts primeiro_numero
else
    puts calcular_mmc(primeiro_numero, segundo_numero)
end