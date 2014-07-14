# 1.6 Дано натуральное число меньшее 512. Необходимо проверить, является ли оно счастливым в двоичном представлении.

class Fixnum
  def lucky_in_binary?
    if self.between?(1, 512)
      number = to_s(2).split(//)
      l = number.length
      if l.even?
        i = l / 2
        number = number.map! { |n| n.to_i }
        sum1 = number.slice(0..i - 1).reduce(:+)
        sum2 = number.slice(i..l).reduce(:+)
        puts "#{self} - #{to_s(2)} is lucky in binary!" if sum1 == sum2
      end
    else
      puts 'Enter number in range 1..512'
    end
  end
end

for i in 1..512 do
  i.lucky_in_binary?
end
