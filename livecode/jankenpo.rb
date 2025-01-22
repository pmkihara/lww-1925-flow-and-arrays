# frozen_string_literal: true

# TODO: jogo de pedra-papel-tesoura
# Guardar as mãos válidas em uma array (para facilitar na hora de usar)
hands = %w[pedra papel tesoura]
running = true
user_points = 0
computer_points = 0

while running && user_points < 3 && computer_points < 3
  # Pegar uma mão randômica para o computador
  computer = hands.sample

  # Mostrar as opções para o usuário e pedir para escolher uma mão
  puts 'Escolha entre Pedra, Papel e Tesoura ou SAIR'
  print '> '
  user = gets.chomp.downcase

  # Verificar se a opção escolhida é válida. Se não for válida, pedir a opção
  # novamente até o usuário escolher uma opção válida.
  until hands.include?(user) || user == 'sair'
    puts 'Por favor, escolha uma opção válida'
    print '> '
    user = gets.chomp.downcase
  end

  if user == 'sair'
    # se o usuário resolver sair, alterar running para false para sair do loop
    # e interromper a execução do código aqui
    running = false
    break
  end

  # Comparar as mãos e criar uma variável result
  if user == computer
    # - Empate quando a mão do usuário e a mão do computador forem iguais
    result = 'empatou'
  elsif (user == 'pedra' && computer == 'tesoura') ||
        (user == 'tesoura' && computer == 'papel') ||
        (user == 'papel' && computer == 'pedra')
    # - Usuário ganha quando:
    #   - Escolhe PEDRA e o computador escolhe TESOURA
    #   - Escolhe TESOURA e o computador escolhe PAPEL
    #   - Escolhe PAPEL e o computador escolhe PEDRA
    result = 'ganhou'
    user_points += 1
  else
    result = 'perdeu'
    computer_points += 1
  end

  # Printar as mãos e o resultado final
  puts "Você escolheu #{user}, o computador escolheu #{computer}. Você #{result}!"
  puts "Seus pontos: #{user_points} | Pontos do computador: #{computer_points}"
  puts '----------------'
end

# (Opcional): continuar jogando até o usuário pedir para sair
# Fazemos isso adicionando a variável running e verificando se o usuário escolheu
# sair. É importante deixar a mão randômica do computador dentro do while porque
# a gente quer que ele tenha uma mão nova a cada rodada

# (Opcional2): continuar jogando até um dos jogadores chegar a 3 pontos
# Fazemos isso criando um contador para o computador e um contador para o usuário.
# Ao final de cada mão, vamos incrementar o contador dependendo do resultado
# (incrementamos o contador do computador quando o usuário perde e incrementamos
# o contador do usuário quando o usuário ganha)
