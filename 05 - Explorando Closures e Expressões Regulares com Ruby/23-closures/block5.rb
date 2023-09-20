# e se o bloco for opcional?
# ruby tem um método chamado block_given? para
# verificar se o bloco foi passado como argumento

def teste
  if block_given?
    # chamando o bloco
    yield # palavra reservada, comando para executar um bloco como parâmetro
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

teste
teste { puts "Execute o bloco" }

# resultado
# Sem parâmetro do tipo bloco
# Execute o bloco