# encoding: utf-8
# 1.4 Дано целое шестизначное число. Необходимо определить,
# является ли оно счастливым.

class Fixnum
  def lucky?
    number = to_s.split(//)
    l = number.length
    if l != 6
      fail ArgumentError, 'Argument is not 6-digits number!'
    else
      number = number.map! { |n| n.to_i }
      first_three = number.slice(0..2).reduce(:+)
      second_three = number.slice(3..5).reduce(:+)
      if first_three == second_three
        puts 'Lucky!'
      else
        puts 'Better luck next time!'
      end
    end
  end
end

111_111.lucky?
