# outra forma de receber blocos como parâmetro é utilizando o símbolo &

def teste(name, &block)
  @name = name
  block.call
end

# método passando o parametro Leandro (name) e o bloco ({ puts "Olá #{@name}" })
teste("Leandro") { puts "Olá #{@name}" }

# resultado
# Olá Leandro