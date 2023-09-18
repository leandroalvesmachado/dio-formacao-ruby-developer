# Desafio
# Faça um programa que calcule e mostre o volume de uma esfera sendo fornecido o valor de seu raio (R). 
# A fórmula para calcular o volume é: (4/3) * pi * R3. Considere (atribua) para pi o valor 3.14159.

#Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

pi = 3.14159
raio = gets().to_f

#TODO:  Crie as condições necessárias para o programa calcular o volume
volume = (4.0 / 3.0) * pi * (raio ** 3)
puts "VOLUME = #{volume.round(3)}"