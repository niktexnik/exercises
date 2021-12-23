# frozen_string_literal :true
def combine_anagrams(words_array)
  result = {}
  words_array.each do |word|
    word.downcase!
    key = word.split('').sort.join
    result[key] ||= []
    result[key] << word
  end
  result.each do |_k, v|
    print v
  end
end

# Упражнение 7
# Анаграмма — литературный приём, состоящий в перестановке букв или звуков
# определённого слова (или словосочетания), что в результате даёт другое слово
# или словосочетание.
# Разработайте метод combine_anagrams(words_array), который принимает на вход
# массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
# значения при определении анаграмм.

# Тест для примеров и проверки:
combine_anagrams(%w[cars for potatoes Racs four sCar creams scream]) # =>[ ["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams","scream"] ]
