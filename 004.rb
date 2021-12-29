# frozen_string_literal: true

def sort_array(array)
  return [] if array.empty?

  min = array.min
  max = array.max
  result = array.map do |el|
    if el == min
      max
    elsif el == max
      min
    else
      el
    end
  end
  result << min
end

# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
p sort_array([]) # => []
p sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
p sort_array([1]) # => [1, 1]
p sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]
