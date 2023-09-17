# Crie um array vazio para armazenar os números
numeros = []

# Peça ao usuário para inserir 3 números
3.times do |i|
  print "Digite o #{i + 1}º número: "
  numero = gets.chomp.to_i
  numeros.push(numero)
end

# Calcule a terceira potência de cada número e exiba o resultado
puts "Resultados das terceiras potências dos números:"
numeros.each do |numero|
  resultado = numero ** 3
  puts "#{numero} elevado à terceira potência é #{resultado}"
end