## Tipos de dados

# Define uma variável
a = "Olá, mundo!"
b = 10
c = 13.2
d = ["oi", "tudo", "bem"]
e = :teste
f = {curso: "Ruby", idioma: "pt", inicio:"Dezembro 2022"}

# Imprime o tipo da variável
puts a.class  # Isso imprimirá "String"
puts b.class  # Isso imprimirá "Integer"
puts c.class  # Isso imprimirá "Float"
puts d.class  # Isso imprimirá "Array"
puts e.class  # Isso imprimirá "Symbol"
puts f.class  # Isso imprimirá "Hash"

# Imprime o Array
puts d[0] # Isso imprimirá "oi"
puts d[1] # Isso imprimirá "tudo"
puts d[2] # Isso imprimirá "bem"
puts d[3] # retorna nil (null)

# Imprime o Hash
puts f[:curso] # Isso imprimirá "Ruby"
puts f[:idioma] # Isso imprimirá "pt"
puts f[:inicio] # Isso imprimirá "Dezembro 2022"


## Operadores matemáticos
# + = Adição
# - = Subtração
# * = Multiplicação
# / = Divisão
# % = Módulo (resto da divisão)
# ** = Expoente

num1 = 12
num2 = 13

puts num1 + num2 # 25
puts num1 - num2 # -1
puts num1 * num2 # 156
puts num1 / num2 # 0 (na divisão só retorna a parte inteira)
puts num2 % num1 # 1 (resto da divisão)
puts num1 ** 2 # 144


## Strings
texto = "Eu sou uma String"
idade = 20

puts texto # Eu sou uma String
puts texto.upcase # EU SOU UMA STRING
puts texto.downcase # eu sou uma string
puts texto.reverse # gnirtS amu uos uE
puts "leandro".capitalize # Leandro
puts "dev" + "ruby" # devruby
puts "estude" << "ruby" # estuderuby
puts "estude".concat(" mais ruby") # estude mais ruby
puts "Leandro tem #{idade}" # Leandro tem 20
puts texto.upcase.reverse # GNIRTS AMU UOS UE

