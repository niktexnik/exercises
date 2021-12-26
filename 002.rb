# frozen_string_literal: true

def coincidence(array = [], range = nil)
  return [] if array.nil? || range.nil?
  # range_array = range.step(0.5).map{|el| el}
  # result = range.to_a & array
  # print result
  array.select { |x| range.include?(x) }
end

p coincidence([1, 2, 3, 4, 5], (3..5)) # => [3, 4, 5]
p coincidence # => []
p coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3)) # => [1, 2, 2.5]

# Упражнение 2
# Дан массив array и числовой диапазон range. Разработайте метод coincidence(array,
# range) для определения элементов из массива array, значения которых входят в
# указанный диапазон. Если не передан хотя бы один из параметров, то должен
# вернуться пустой массив.
