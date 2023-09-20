# Desafio
# Podemos dizer que até 25°C a temperatura está amena e gostosa e após esse valor já consideramos calor. 
# Faça um programa que verifique se a temperatura é maior que 25°C e print no console a seguinte frase: “Está calor!”.

# OBS: Para verificarmos se um número é maior ou menor que outro podemos usar os operadores > e <

# Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

number = gets.to_i
num = 25

#TODO: Crie as condições necessárias para verificar se a variável
# é maior que a constante e print no console a frase

if number > 25
  puts "Está calor!"
end