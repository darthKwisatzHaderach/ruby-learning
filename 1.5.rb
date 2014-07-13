# encoding: utf-8
# 1.5 Дано трехзначное число. Необходимо проверить, образуют ли цифры этого числа возрастающую последовательность.

class Fixnum
  def sequence?
    number = to_s.split(//)
    puts 'It\'s sequence!' if number == number.sort
  end
end

123.sequence?
45_678.sequence?
53_463.sequence?
