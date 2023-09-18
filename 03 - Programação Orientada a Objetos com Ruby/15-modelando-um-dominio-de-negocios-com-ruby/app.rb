require_relative 'produto'
require_relative 'loja'

produto1 = Produto.new
produto1.nome = "Produto 1"
produto1.preco = 100

produto2 = Produto.new
produto2.nome = "Produto 2"
produto2.preco = 300

loja1 = Loja.new(produto1.nome, produto1.preco)
loja1.comprar

loja2 = Loja.new(produto2.nome, produto2.preco)
loja2.comprar