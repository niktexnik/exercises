# frozen_string_literal :true
def count_words(string)
  result = Hash.new(0)
  words = string.gsub(/\W/, ' ').downcase!.split
  words.each { |word| result[word] += 1 }
  result
end

# Упражнение 10
# Разработайте функцию count_words(string), которая будет возвращать хэш со
# статистикой частоты употребления входящих в неё слов.
# Тесты для примеров и проверки:
p count_words('A man, a plan, a canal -- Panama') # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
p count_words('Doo bee doo bee doo') # => {'doo' => 3, 'bee' => 2}
