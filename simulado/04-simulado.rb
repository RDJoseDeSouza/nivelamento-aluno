# 4) Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro como parâmetro e 
# deve imprimir na tela uma tabela de números seguindo a seguinte regra:
# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n
def imprimir_tabela(numero_inteiro)
    linhas= 1
    repetiçoes = 1
    colunas = 0
    if numero_inteiro <= 0
        puts
        return nil
    else
        until linhas == numero_inteiro +1
        
            if linhas == 0
                
                print repetiçoes 
            else
                print linhas
                for n in (1..colunas)
                    print " "
                    print repetiçoes + linhas
                    repetiçoes = repetiçoes + linhas
                end


            end
            puts

            linhas =linhas +1
            colunas = colunas +1
            repetiçoes = linhas
        end
    end
end
        
imprimir_tabela(5)


imprimir_tabela(6)

imprimir_tabela(7)
imprimir_tabela(0)

imprimir_tabela(3)


