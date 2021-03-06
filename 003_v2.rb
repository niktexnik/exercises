# frozen_string_literal: true

def max_odd(array)
  sanitized_array = array.flatten.compact.select{ |el| el.is_a?(Numeric) && el.to_i == el  }

  result = []
  sanitized_array.each do |el|
    result << el if el % 2 != 0
  end
  result.max
end
# Дан массив элементов произвольной природы. Необходимо разработать метод
# max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,`1245u789`
# если таких элементов нет в переданном массиве.

p max_odd([1, 2, 3, 4, 4]) # => 3
p max_odd([21.0, 2, 3, 4, 4]) # => 21
p max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
p max_odd(%w[ololo fufufu]) # => nil
p max_odd([2, 2, 4]) # => nil
p max_odd([1, 2, 3.17912893719823, 4, 4, 3.77912893719838, 3.00])
