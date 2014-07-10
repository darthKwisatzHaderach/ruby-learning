# 1.1 Дано четырехзначное целое число. Необходимо проверить, является ли оно числом Армстронга.
#
#
# Ruby может распознавать аргументы командной строки. Для этого используется класс ARGV.
# Например, запускаем текущий ruby-файл с параметром: ruby 1.1.rb 1234
# Аргумент из примера можно получить вызвав ARGV[0].
#
# if ARGV[0].nil?
#   puts "Enter four-digit number."
# else
#	if ARGV[0].to_i < 10000 and ARGV[0].to_i > 999
#	  number = ARGV[0]
#	  puts number
#	else
#	  puts "Enter four-digit number."	
# 	end
# end
#
# Чтобы прочитать данные введенные пользователем, используется метод gets.
#
# puts "Enter four-digit number."
# number = gets.chomp
# puts "!" + number + "!"
#
# Метод gets добавляет '\n' (перевод строки) к строке введенной пользователем.
# Чтобы убрать '\n', в сочетании с методом gets используется метод chomp.
#
# puts "Enter four-digit number."
# number = gets.chomp
# puts "!" + number + "!"

class Armstrong
  def initialize  	
  end

  def get_number
  	puts "Enter '1' if you want to find all Armstrong numbers."
	puts "Enter '2' if you want to check your number."
  	@num = gets.chomp
  end

  def check_number(number)
  	modified_number = 0
	array_of_digits = number.to_s.split(//)

	array_of_digits.each do |n|
  	  modified_number = modified_number + n.to_i ** 3
	end

	if number.to_i == modified_number
  	  puts "True"
	else
  	  puts "False"
	end	
  end

  def find_armstrongs
    for i in 0..10000
	  modified_number = 0  	  
	  array_of_digits = i.to_s.split(//)
	  array_of_digits.each do |n|
  	  	modified_number = modified_number + n.to_i ** 3
	  end

      if i == modified_number
  	    puts "#{i} - True"	  
	  end	
  	end	
  end
end

puts "Enter '1' if you want to find all Armstrong numbers."
puts "Enter '2' if you want to check your number."
num = gets.chomp

armstrong = Armstrong.new()

case num 
  when '1'
  	armstrong.find_armstrongs
  when '2'
	puts "Enter number."
	number = gets.chomp
	armstrong.check_number(number)
end