# frozen_string_literal :true
def palindrome?(string)
  if string.nil? || string.is_a?(Numeric)
    false
  else
    sanitized_string = string.gsub(/\W/, '').downcase
    sanitized_string == sanitized_string.reverse
  end
end

puts palindrome?('A man, a plan, a canal -- Panama')
puts palindrome?("Madam, I'm Adam!")
puts palindrome?(333)
puts palindrome?(nil)
puts palindrome?('Abracadabra')

# Упражнение 1
# Разработайте метод palindrome?(string), который будет определять, является ли
# строка string палиндром (строкой, которая читается одинаково как с начала так и с
# конца), при условии игнорирования пробелов, знаков препинания и регистра.
# Тесты для примеров и проверки:
# palindrome?("A man, a plan, a canal -- Panama")
# palindrome?("Madam, I'm Adam!")
# palindrome?(333)
# palindrome?(nil)
# palindrome?("Abracadabra")
