# vamos manipular arrays
# lista de livros

# criar um array vazio
livros = []

# vamos adicionar um item nesse array livros.push("o que queremos colocar")
livros.push("Livro 1")

# vamos adicionar vários itens ao nosso array
# push adiciona sempre no final do array
livros.push("Livro 2")
livros.push("Livro 3")

# organizando os novos dados da lista
# o insert adiciona um item na posição que eu informar
livros.insert(0, "Livro 4")
livros.insert(2, "Livro 5")

# Livro 4
# Livro 1
# Livro 5
# Livro 2
# Livro 3
puts livros

# acessando os elementos do array
puts livros[2]

# acessando os elementos do array passando um intervalo
puts livros[1..3]

# acessando o primeiro elemento do array
puts livros.first

# acessando o último elemento do array
puts livros.last

# para saber a quantidade de elementos de um array
puts livros.count
puts livros.length

# como descobrir se o array esta vazio
puts livros.empty? # retorna false, pois não esta vazio

# verificar se um elemento existe no array
puts livros.include?("Livro 4") # retorn true pois o elemento existe no array

# como excluir um elemento do array
livros.delete_at(1) # informar a posição

# como excluir o último elemento do array
livros.pop

# como excluir o primeiro elemento do array
livros.shift
