# frozen_string_literal: true

# TODO: criar um método #acronymize que recebe uma sentença e retorna uma string
# com as iniciais de cada palavra em maiúscula
def acronymize(sentence)
  # # quebrar a sentença em uma array com palavras
  # string = sentence.split

  # # inicializar uma array vazia para guardar as letras
  # result = []

  # # para cada palavra da array:
  # string.each do |word|
  #   # colocar a primeira letra em maiúscula
  #   word.capitalize!
  #   # jogar na array result a primeira letra de cada palavra
  #   result.push(word[0])
  # end

  # # juntar todas as letras em uma string
  # result.join
  sentence.split.map { |word| word[0] }.join.upcase # a mesma coisa do de cima
end

# TDD (Test Driven Development)
puts acronymize('') == ''
puts acronymize('what the FLUFF') == 'WTF'
puts acronymize('away from keyboard') == 'AFK'
