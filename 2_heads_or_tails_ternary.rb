# frozen_string_literal: true

# LIVECODE - CARA OU COROA

# Criar uma moeda com valor randômico cara ou coroa
coin = %w[heads tails].sample
p coin
# Pedir uma escolha ao usuário
puts 'Pick heads or tails'
print '> '

# Pegar a resposta do usuário e guardar em uma variável
choice = gets.chomp

# se o usuário acertar, result é igual a 'win'
# se o usuário não acertar, result é igual a 'lose'
# result = nil
# if choice == coin
#   result = 'win'
# else
#   result = 'lose'
# end

# TODO: Refatorar o código usando ternário
# (choice == coin) ? result = 'win' : result = 'lose'
result = choice == coin ? 'win' : 'lose'

# Printar o resultado
puts "The coin was #{coin}. You #{result}!"
