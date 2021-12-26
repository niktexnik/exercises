# frozen_string_literal :true
require 'active_support/time'
require 'date'
def date_in_future(integer)
  if integer.is_a?(Integer)
    p (Time.now + integer.days).strftime("%d-%m-%Y %H:%M:%S")
  else
    p Time.now.strftime("%d-%m-%Y %H:%M:%S")
  end
end

# Разработать метод date_in_future(integer), который вернет дату через integer дней.
# Если integer не является целым числом, то метод должен вывести текущую дату.
# Формат возвращаемой методом даты должен иметь следующий вид '01-01-2001
# 22:33:44’.
# Для работы со временем в языке Ruby рекомендуется использовать библиотеку
# active_support, которая расширяет его дополнительными методами, включая работу
# со временем.

# # Тесты для примеров и проверки:
date_in_future([]) # => текущая дата
date_in_future(2) # => текущая дата + 2 дня
date_in_future(2.5) # => текущая дата
