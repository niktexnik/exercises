# frozen_string_literal :true
class Dessert
  attr_accessor :name, :calories

  def initialize(name = nil, calories = nil)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

p dessert = Dessert.new
# p dess = Dessert.new("Торт со вкусом водки", 199)
# p dess.healthy?
# p dess.delicious?
# p '---------------------------------------------------------'
# p dess2 = Dessert.new("Пирог с мышьяком", 390)
# p dess2.healthy?
# p dess2.delicious?

# Упражнение 11
# Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и
# calories, конструктором, принимающим на вход name и calories, а также двумя
# методами healthy? (возвращает true при условии калорийности десерта менее 200)
# и delicious? (возвращает true для всех десертов).