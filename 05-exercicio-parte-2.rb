# Parte 2:
# Escreva um programa que pergunte o nome e a idade do usuário. Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro.
# Para cada parte, escreva códigos que testem os programas escritos.
puts ''
def calculo_de_batimentos(idade)
    batimentos = 80
 return idade*365*24*60*batimentos
end
print "Olá, para começar, digite seu nome: "
nome = gets.chomp
puts "Seja bem vindo! " + nome + " Iremos calcular quantas" +  " vezes seu coraçao ja bateu ,  e para isso precisamos da sua idade"
print "Por favor, informe sua idade: "
idade = gets.to_i
puts nome+ "a quantidade de batimentos do seu coraçao até a sua idade atual que é " + idade.to_s  +  " anos é de: "+ calculo_de_batimentos(idade).to_s
