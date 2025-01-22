# frozen_string_literal: true

# ARRAYS

# Inicializar uma array
# array vazia
empty_array = []
empty_array
# array com elementos
avengers = ['Captain America', 'IronMan', 'Black Widow']
avengers

# CRUD
# Read - acessando elementos da array
# nome_da_array[index_do_elemento]
avengers[1]
# Acessando o último elemento da array
avengers[-1]
# Acessando um subset da array
avengers[0...-1]

# Create - adicionando elementos na array
# Adicionar o Thor via <<
avengers << 'Thor'
# Adicionar o Hulk via #push
avengers.push('Hulk')
# Adicionar o Hawkeye via próximo index
avengers[5] = 'Hawkeye'

# Update - reatribuindo valores de elementos da array
# nome_da_array[index_do_elemento] = novo_valor
avengers[4] = 'The Hulk'

# Delete - removendo elementos da array
# Via #delete (remove pelo valor do elemento)
# Cuidado! O #delete remove todos os elementos com o valor passado
avengers.delete('Black Widow')

# Via #delete_at (remove pelo index do elemento)
avengers.delete_at(1)

# QUANTIDADE DE ELEMENTOS DA ARRAY (3 métodos)
# Via length
# Via size
# Via count

# ITERAÇÃO - Um loop com cada elemento da array
# #each é a mesma coisa que o for..in, porém o #each é considerado "melhor estilo"
# para iterar sobre arrays em Ruby
avengers.each do |avenger|
  puts "#{avenger} is in the avengers"
end

# for avenger in avengers
#   puts "#{avenger} is in the avengers"
# end
