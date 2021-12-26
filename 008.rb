# frozen_string_literal :true
def multiply_numbers(inputs = nil)
  nil if inputs.nil? || inputs.to_s.gsub(/\D/, '').split('').size == 0
  inputs.to_s.gsub(/\D/, '').split('').inject { |result, x| result.to_i * x.to_i }
end
# Упражнение 8
# Написать метод multiply_numbers(inputs), который вернет произведение цифр, входящих в inputs.
# Тест для примеров и проверки:
p multiply_numbers() # => nil
p multiply_numbers('ss') # => nil
p multiply_numbers('1234') # => 24
p multiply_numbers('sssdd34') # => 12
p multiply_numbers(2.3) # => 6
p multiply_numbers([5, 6, 4]) # => 120
p multiply_numbers('1234') # => 24