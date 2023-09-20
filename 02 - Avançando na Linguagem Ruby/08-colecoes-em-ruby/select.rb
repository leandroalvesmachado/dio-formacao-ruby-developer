#Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida.
#Traz como resultado somente os valores que passam nesta condição.
#muito útil em pesquisas

#Primeiro vamos usar SELECT com ARRAY
#Criar nosso array
numeros = [-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]

# selecionando todos os valores que são n <= 0
selecionados = numeros.select do |n|
  n <= 0
end

# os selecionados
puts selecionados

#agora vamos usar o SELECT em um HASH
numeros = { 0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}
puts 'Vamos selecionar Chaves (Keys) com valores iguais a 0'

selecionados_chave = numeros.select do |key, value|
  key == 0 #== (igual da mnatemática)
end 

# chaves escolhida
puts selecionados_chave