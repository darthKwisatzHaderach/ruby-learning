# 1.4 Дано целое шестизначное число. Необходимо определить, является ли оно счастливым.

class Fixnum

  def is_lucky?
    number = self.to_s.split(//)
    l = number.length
    if l != 6
      raise ArgumentError, 'Argument is not 6-digits number!'
    else
      number = number.collect!{ |n| n = n.to_i }
      first_three = number.slice(0..2).inject{ |n,res| res = res + n }      
      second_three = number.slice(3..5).inject{ |n,res| res = res + n }      
      if first_three == second_three
        puts "Lucky!"
      else
        puts "Better luck next time!"
      end
    end
  end

end

111111.is_lucky?