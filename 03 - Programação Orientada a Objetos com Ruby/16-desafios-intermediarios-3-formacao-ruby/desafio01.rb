# 1 / 3 - Índices Pares do Array
# Desafio
# Crie um programa que, dadas duas listas de números inteiros e tamanho igual, some os índices pares de cada uma delas e 
# print no console uma nova lista resultante dessa operação.

# Entrada
# As entradas serão duas listas.

# Saída
# A saída deverá ser uma nova lista com o resultado da soma dos índices pares das duas primeiras.

lista1 = [1, 2, 3, 4, 5]
lista2 = [1, 2, 3, 4, 5]
tamanho = lista1.length
resultado = []

for i in 0..(tamanho - 1)
  # Soma os elementos dos índices pares das duas listas
  if i % 2 == 0
    resultado.push(lista1[i] + lista2[i])
  end
end

puts "Lista Resultante: #{resultado}"