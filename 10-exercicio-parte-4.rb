# 4) Quer mais? Tente fazer uma letra V, usando asteriscos “*” e
# underscores "_".
# _***************_  17 por linha, asteriscos = 15
# *_*************_*
# **_***********_**
# ***_*********_***
# ****_*******_****
# *****_*****_*****
# ******_***_******
# *******_*_*******
# ********_********
# Enviar como 10-exercicio-parte-4.rb


primeiro = 1
dentro_asteriscos = 15
bordas_imprimir = 0
parada = 0
borda_fora = 0

for caractere in (1..9)
    
    if primeiro == 1
        print "_"



    else
        for borda_frente in (1..bordas_imprimir)
            print "*"
            
        end
        for figura in (1..1)
            print "_"
        end
    end
    
    for dentro in (1..dentro_asteriscos)
        print "*"
    
    end
    until parada == 8
        print "_"
        break
    end
    if borda_fora == 1
   
        for borda_fora_loop in (1..bordas_imprimir)
            print "*"
        end
    end

    borda_fora = 1
    
    dentro_asteriscos = dentro_asteriscos - 2
    primeiro = 0
    puts
    bordas_imprimir = bordas_imprimir + 1
    parada = parada + 1
end