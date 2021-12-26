# frozen_string_literal: true

def sort_array(array)
  return [] if array.empty?

  min_el = array.min
  max_el = array.max
  min_indexes = array.collect.with_index { |el, idx| idx if el == min_el }.compact
  max_indexes = array.collect.with_index { |el, idx| idx if el == max_el }.compact
  result = array.map.with_index do |el, idx|
    if min_indexes.include?(idx)
      max_el
    elsif max_indexes.include?(idx)
      min_el
    else
      el
    end
  end

  result << min_el
end

# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
p sort_array([]) # => []
p sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
p sort_array([1]) # => [1, 1]
p sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]
