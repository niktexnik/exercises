# frozen_string_literal: true

def sort_array(array = [])
  if array.empty?
    array
  else
    min_el = array.min
    max_el = array.max
    # index_min = array.index(min_el)
    # index_max = array.index(max_el)
    # array[index_min], array[index_max] = array[index_max], array[index_min]
    array.each do |el|
      if el == min_el
        max_el
      elsif el == max_el
        min_el
      else
        el
      end
      array << min_el
    end
  end
end

# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
p sort_array([]) # => []
p sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
p sort_array([1]) # => [1, 1]
p sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]