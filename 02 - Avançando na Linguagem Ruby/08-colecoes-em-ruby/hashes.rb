#manipulando hashes
#também é um tipo de lista, mas ela tem uma CHAVE: VALOR
#criando um hash vazio variavel = Hash.new
animais = Hash.new

#podemos iniciar com pares CHAVE-VALOR variavel = {chave: 'valor', chave: 'valor'}
animais = {ave: "Tucano", mamifero: "Cachorro", reptil: "Lagarto"}

puts animais # {:ave=>"Tucano", :mamifero=>"Cachorro", :reptil=>"Lagarto"}

#adicione um nome item ao hash variavel[:nome inclusão] = "valor a ser add"
animais[:aves2] = "Papagaio"

puts animais # {:ave=>"Tucano", :mamifero=>"Cachorro", :reptil=>"Lagarto", :aves2=>"Papagaio"}

#para retornar todas as chaves de um hash nome.keys
puts animais.keys

#para retornar todos os valores de um hash nome.values
puts animais.values

#para excluir um elemento nome.delete(:nome a ser exluido)
animais.delete(:aves2)

puts animais # {:ave=>"Tucano", :mamifero=>"Cachorro", :reptil=>"Lagarto"}

#descubra o tamanho do hash nome.size
puts animais.size # 3

#verifique se o hash está vazio nome.empty?
puts animais.empty? # retorna false, pois o hash não esta vazio