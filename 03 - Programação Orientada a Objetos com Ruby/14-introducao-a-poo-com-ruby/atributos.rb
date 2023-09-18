# Como você já sabe objetos possuem informações e comportamentos.
# Vimos uma parte deste conteúdo utilizando métodos para representar comportamentos. 
# Agora vamos  aprender a adicionar e recuperar informações de um objeto.

# class Aluno
#   método get para o atributo nome
#   def nome
#     @nome
#   end
# 
#   método set para o atributo nome
#   def nome= nome
#     @nome = nome
#   end
# end

# aluno = Aluno.new
# aluno.nome = "Leandro"
# puts aluno.nome

# ruby disponibiliza um método chamado attr_accessor (métodos gets e sets para os atributos) que cria os 
# métodos var e var= (como se fossem os métodos gets e sets para os atributos) para todos atributos declarados
# Usando attr_accessor para criar automaticamente métodos de leitura e escrita para @nome, @idade e @cidade

class Aluno 
  attr_accessor :nome, :idade, :cidade
end

aluno = Aluno.new 
aluno.nome = 'Tenille'
puts aluno.nome
    
aluno.idade = '36 anos'
puts aluno.idade

aluno.cidade = 'São Paulo'
puts aluno.cidade