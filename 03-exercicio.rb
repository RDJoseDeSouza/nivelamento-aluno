

def calcular_horas_em_anos (anos)
    horas = anos * 365 * 24
    return horas
end
anos = 30
puts "A quantidade de horas em " + anos.to_s + " anos é: " + calcular_horas_em_anos(anos).to_s 
puts
anos = 20
puts "A quantidade de horas em " + anos.to_s + " anos é: " + calcular_horas_em_anos(anos).to_s 
puts
anos = 13
puts "A quantidade de horas em " + anos.to_s + " anos é: " + calcular_horas_em_anos(anos).to_s + " horas"


puts
puts


def calcular_minutos_em_decadas (decadas)

    minutos= decadas * 10 * 365 * 24 * 60
    return minutos

end

decadas = 1
puts "A quantidade de minutos em: " + decadas.to_s + " decadas é de: " + calcular_minutos_em_decadas(decadas).to_s + " minutos." 
puts
decadas = 3
puts "A quantidade de minutos em: " + decadas.to_s + " decadas é de: " + calcular_minutos_em_decadas(decadas).to_s + " minutos." 
puts 
decadas = 10
puts "A quantidade de minutos em: " + decadas.to_s + " decadas é de: " + calcular_minutos_em_decadas(decadas).to_s + " minutos." 
puts
puts




def calcular_idade_em_segundos (idade)
    segundos_de_vida = idade*365*24*60*60
    return segundos_de_vida
end

idade = 22
puts "A quantidade de segundos em: " + idade.to_s + " anos é de: " + calcular_idade_em_segundos(idade).to_s + " segundos." 
puts
idade = 39
puts "A quantidade de segundos em: " + idade.to_s + " anos é de: " + calcular_idade_em_segundos(idade).to_s + " segundos." 
puts
idade = 49
puts "A quantidade de segundos em: " + idade.to_s + " anos é de: " + calcular_idade_em_segundos(idade).to_s + " segundos." 
puts
puts


def calcular_segundos_em_anos (segundos)
    anos = segundos/ 60 /60 / 24 / 365
    return anos
end

segundos = 1229904000.0
puts "A quantidade de anos em: " + segundos.to_s + " segundos é de " + calcular_segundos_em_anos(segundos).to_s + " anos!"
puts
segundos = 693792000.0
puts "A quantidade de anos em: " + segundos.to_s + " segundos é de " + calcular_segundos_em_anos(segundos).to_s + " anos!"
puts
segundos = 1545264000.0
puts "A quantidade de anos em: " + segundos.to_s + " segundos é de " + calcular_segundos_em_anos(segundos).to_s + " anos!"



