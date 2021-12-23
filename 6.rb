# frozen_string_literal: true
# class Game
#   class WrongNumberOfPlayersError < StandardError; end
#   class NoSuchStrategyError < StandardError; end
#   STRATEGY = %w[R P S].freeze

#   def rps_game_winner(array)
#     array_to_hash = array.to_h
#     parse(array_to_hash)
#   end

#   def prepair(hash)
#     p1, p2 = ''
#     p1 = hash['player1']
#     p2 = hash['player2']
#     check_result(p1, p2)
#   end

#   def check_result(p1, p2)
#     if p1 == p2
#       puts "player1 #{p1}"
#     elsif p1 == 'P' && p2 == 'R' || p1 == 'S' && p2 == 'P' || p1 == 'R' && p2 == 'S'
#       puts "player1 #{p1}"
#     else
#       puts "player2 #{p2}"
#     end
#   end

#   def parse(input)
#     raise WrongNumberOfPlayersError, 'Kоличество игроков больше 2' if input.length > 2

#     raise NoSuchStrategyError, 'Такой стратегии не существует' if (STRATEGY - input.values).size > 1 #input.values.include?(STRATEGY)

#     prepair(input)
#   end
# end
class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end
STRATEGY = %w[R P S].freeze
def rps_game_winner(strategy)
check_strategy(strategy.flatten)
end

def check_strategy(data)
  raise WrongNumberOfPlayersError, 'Kоличество игроков больше 2' if data.length > 4
  raise NoSuchStrategyError, 'Такой стратегии не существует' if data.each{ |el| STRATEGY.include?(el) }
  data
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
# rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]]) # =>WrongNumberOfPlayersError
# rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
rps_game_winner([%w[player1 P], %w[player2 S]]) # => 'player2 S'
rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
rps_game_winner([%w[player1 S], %w[player2 R]]) # => 'player2 R'

# strategy = %w[R P S]
# input1 = {"palyer1" => "S", "palyer2" => "P"}
# input2 = {"palyer1" => "P", "palyer2" => "P"}
# input3 = {"palyer1" => "S", "palyer2" => "A"}
# p strategy.include?(input1.values)
# p input2.values.include?(strategy)
# p input3.values.include?(strategy)
# game1 = Game.new.rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]]) # =>WrongNumberOfPlayersError
# game2 = Game.new.rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
# game3 = Game.new.rps_game_winner([%w[player1 P], %w[player2 S]]) # => 'player2 S'
# game4 = Game.new.rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
# game5 = Game.new.rps_game_winner([%w[player1 S], %w[player2 R]]) # => 'player2 R'
