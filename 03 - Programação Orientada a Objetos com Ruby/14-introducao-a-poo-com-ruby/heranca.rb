# Herança
# Para herdar características de outra classe, adicione na frente do 
# nome de uma classe filha o símbolo de menor (<) e depois o nome da classe pai.

# exemplo animal

class Animal
  def dormir
    puts 'ZZzzzzzzz'
  end

  def pular
    puts 'Toin, Toin'
  end
end

# classe Gato herdando da classe Animal
# a classe Gato vai herdar todos os métodos da classe Animal
class Gato < Animal
  def miar
    puts 'Miau, Miau'
  end
end

gato = Gato.new
gato.miar
gato.dormir
gato.pular