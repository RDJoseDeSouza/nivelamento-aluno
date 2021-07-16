# Exercicio 10
# 1) Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.
# Enviar 10-exercicio-parte-1.rb


linhas= 8
colunas= 8
#Parte de cima
for c in (1..10)
    print "*"
end
puts
#parte de dentro
for x in (1..linhas)
    print "*"
    
    for y in (1..colunas)
        print "x"
       
    end
    print "*"
    puts
    
end
#Parte de baixo

for c in (1..10)
        print "*"
end
