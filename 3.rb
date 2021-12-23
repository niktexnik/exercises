# frozen_string_literal: true

def max_odd(array = nil)
  result = []
  array.flatten.compact.select{ |el| el.class != String }.each do |el|
    result << el if el % 2 != 0
  end
  p result.max
end
# Дан массив элементов произвольной природы. Необходимо разработать метод
# max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,
# если таких элементов нет в переданном массиве.

max_odd([1, 2, 3, 4, 4]) # => 3
max_odd([21.0, 2, 3, 4, 4]) # => 21
max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
max_odd(%w[ololo fufufu]) # => nil
max_odd([2, 2, 4]) # => nil