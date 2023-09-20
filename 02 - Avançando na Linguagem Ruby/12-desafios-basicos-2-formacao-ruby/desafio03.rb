# Desafio
# Crie um programa que verifique, entre duas entradas, qual número é o maior e qual é o menor e 
# print eles no console dizendo “O número X é o maior e o Y é o menor” substituindo X e Y pelas entradas.
# As entradas serão dois números inteiros NUNCA iguais.

# Desafios Ruby na DIO têm funções "gets" e "puts" acessíveis globalmente:
# "gets" : lê UMA linha com dado(s) de entrada (inputs) do usuário;
# "puts": imprime um texto de saída (output), pulando linha.
# ".to_i": Converte para int

number1 = gets.to_i
number2 = gets.to_i

# TODO: Crie as condições necessárias para verificar qual número é maior
# e print no console com a frase

# Verificar qual número é maior e qual é menor
if number1 > number2
  maior = number1
  menor = number2
elsif number2 > number1
  maior = number2
  menor = number1
else
  puts "Os números são iguais."
  exit
end

# Exibir o resultado
puts "O número #{maior} é o maior e o #{menor} é o menor"