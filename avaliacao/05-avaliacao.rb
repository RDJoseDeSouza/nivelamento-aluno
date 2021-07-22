# 5) O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo é pela fórmula de Leibniz,
#  que diz que a convergência da seguinte série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de Leibniz para obter o valor de PI.
#  O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função retorna nil.
# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!
# Ex:
# puts(calcula_pi(4))
# deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.
def calcula_pi(numero_de_termos)
    leibniz = 4.0
    resultado = 0
    sai_dai = 0
    n = 0
    soma = 0
    if numero_de_termos <= 1
        return nil
    else

        until sai_dai == numero_de_termos
            
            if n%2 == 0
                n = n +1
                next
            else
                if soma == 0
                
                    resultado = leibniz/n-resultado
                    n = n+1
                    soma = soma + 1
                    sai_dai = sai_dai + 1
                    
                    next
                elsif soma%2 == 0
                    resultado = (leibniz/n) + resultado
                    soma = soma +1
                else
                    resultado = resultado -  (leibniz/n)
                    soma = soma + 1
                   




                end
            end
            
            sai_dai = sai_dai + 1
            n = n +1
            
        end
    end
    return resultado
end
puts(calcula_pi(4))
puts(calcula_pi(5))
puts(calcula_pi(0))