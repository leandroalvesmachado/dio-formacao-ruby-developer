# escopo: define onde uma variável estará disponível dentro do seu programa.
# 4 tipos em ruby
# 1. locais
# 2. globais
# 3. classes
# 4. instância

# LOCAIS: Podem ser acessadas apenas onde foram criadas. 
# Forma: primeira letra minuscula ou sublinhada
class Teste
  def local
    local = 'é acessada somente nesse método Local'
    print local
  end
end

teste = Teste.new
teste.local

# se tentar acessar ela aqui fora dará erro
#puts local

# GLOBAIS: Pode ser acessada de qualquer lugar do programa. 
# Forma: use o prefixo $
# USO DESENCORAJADA

class Teste
  def global
    $global = 0
    puts $global
  end
end
  
class Teste_2
  def outro_global
    $global += 1
    puts $global
  end
end
 
teste = Teste.new
teste_2 = Teste_2.new
teste.global
teste_2.outro_global
puts $global

# CLASSE: Pode ser acessada de qualquer lugar da classe
# Forma: @@

class Usuario
  @@usuario_count = 0

  def add(name)
    puts "Usuário #{name} adicionado"
    @@usuario_count += 1
    puts @@usuario_count
  end
end

first_user = Usuario.new
first_user.add("Leandro")

second_user = Usuario.new
second_user.add("Machado")

# INSTÂNCIA: Semelhante a de classe
# Forma: @

class Usuario
  def add(nome)
    @nome = nome
    puts "Usuário adicionado"
    ola
  end
  
  def ola
    # consigo acessar a variavel de instância dentro de qualquer método da classe (@nome)
    puts "Seja bem vindo(a), #{@nome}!"
  end
end
  
usuario = Usuario.new
usuario.add('Tenille')