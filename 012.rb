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

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name = nil, calories = nil, flavor = nil)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor == 'black licorice'
  end
end

p de = Dessert.new
p dess = Dessert.new('Торт со вкусом водки', 199)
p dess.healthy?
p dess.delicious?
p '---------------------------------------------------------'
p dess2 = Dessert.new('Пирог с мышьяком', 390)
p dess2.healthy?
p dess2.delicious?
p '---------------------------------------------------------'
p jel = JellyBean.new
p jelly = JellyBean.new('Ololo', 20, 'black licorice')
p jelly.delicious?
p jelly.healthy?
p '----------------------------------------------------------'
p jelly2 = JellyBean.new('Xulio', 200, 'not black licorice')
p jelly2.delicious?
p jelly2.healthy?

# Упражнение 12
# Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
# геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
# образом, чтобы он возвращал false только в тех случаях, когда flavor равняется «black licorice».
