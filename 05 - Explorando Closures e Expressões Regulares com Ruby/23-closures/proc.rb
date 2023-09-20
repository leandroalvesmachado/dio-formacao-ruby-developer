# Proc = processo
# Proc é um encapsulamento de um bloco de código, que pode ser armazenado
# em uma variável local, passado para um método ou outro Proc e pode ser chamado

hello_proc = Proc.new do
  puts "Hello World 1"
end

# resultado = Hello World 1
hello_proc.call

# ou

hello2_proc = proc do
  puts "Hello World 2"
end

# resultado = Hello World 2
hello2_proc.call