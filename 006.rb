# frozen_string_literal: true

class Game
  class WrongNumberOfPlayersError < StandardError; end
  class NoSuchStrategyError < StandardError; end
  STRATEGY = %w[R P S].freeze

  def rps_game_winner(array)
    array_to_hash = array.to_h
    parse(array_to_hash)
  end

  def check_result(hash)
    p1_hand = hash['player1']
    p2_hand = hash['player2']
    if p1_hand == p2_hand || p1_hand == 'P' && p2_hand == 'R' || p1_hand == 'S' && p2_hand == 'P' || p1_hand == 'R' && p2_hand == 'S'
      "player1 #{p1_hand}"
    else
      "player2 #{p2_hand}"
    end
  end

  def parse(input)
    raise WrongNumberOfPlayersError, 'Kоличество игроков больше 2' if input.length > 2

    raise NoSuchStrategyError, 'Такой стратегии не существует' if (input.values - STRATEGY).any?

    check_result(input)
  end
end

# Разработать методы для программы Камень-Ножницы-Бумага.
# Метод rps_game_winner должен принимать на вход массив следующей структуры
# [ ["player1", "P"], ["player2", "S"] ], где P - бумага, S - ножницы, R - камень, и
# функционировать следующим образом:
# • если количество игроков больше 2 необходимо вызывать исключение
# WrongNumberOfPlayersError;
# • если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать
# исключение NoSuchStrategyError;
# • в иных случаях необходимо вернуть имя и ход победителя, если оба
# игрока походили одинаково - выигрывает первый игрок.

# Тесты для примеров и проверки:

p game1 = Game.new.rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]]) # =>WrongNumberOfPlayersError
p game2 = Game.new.rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
p game3 = Game.new.rps_game_winner([%w[player1 P], %w[player2 S]]) # => 'player2 S'
p game4 = Game.new.rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
p game5 = Game.new.rps_game_winner([%w[player1 S], %w[player2 R]]) # => 'player2 R'
