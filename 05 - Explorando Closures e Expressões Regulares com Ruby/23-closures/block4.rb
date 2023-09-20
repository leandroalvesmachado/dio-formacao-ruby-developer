# criaremos um método que recebe um block como parâmetro

def teste
  # chamando o bloco 2 vezes
  yield # palavra reservada, comando para executar um bloco como parâmetro
  yield
end

teste { puts "Execute o bloco" }

# resultado
# Execute o bloco
# Execute o bloco
