# criar um lambda
primeiro_lambda = lambda { puts "meu primeiro lambda" }
primeiro_lambda.call # meu primeiro lambda

# outra sintaxe do lambda
# ->
segundo_lambda = -> { puts "meu segundo lambda" }
segundo_lambda.call # meu segundo lambda

# lambda com parâmetros
terceiro_lambda = -> (names){ names.each {|name| puts name} }

names = ["Carlos", "Catarina", "Leticia"]
terceiro_lambda.call(names)

# resultado
# Carlos
# Catarina
# Leticia
