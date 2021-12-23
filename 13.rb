# frozen_string_literal :true
class String
  def palindrome?
    if nil? || is_a?(Numeric)
      puts 'false'
    else
      gsub(/\W/, '').downcase == gsub(/\W/, '').downcase.reverse
    end
  end
end

puts 'Abracadabra'.palindrome?
puts "Madam, I'm Adam!".palindrome?
puts 'foo'.palindrome?

# Упражнение 13
# Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
# вы могли его использовать как "foo".palindrome? # => false.
