# encoding: utf-8
# 1.2 Идет k-я секунда года. Необходимо определить сколько полных месяцев и полных недель осталось до конца года.
#
#
# Время хранится как число секунд, начиная с 1 января 1970 00:00 UTC. 
# Соответственно команда Time.now.to_i вернет число секунд отсчитанных от 1 января 1970 00:00 UTC до текущего момента. 

class Reminder  
    
  def initialize()		
  	@start_of_year = Time.new('2014', '01', '01').to_i
  	@end_of_year = Time.new('2014', '12', '31').to_i
  	@now = Time.now.to_i  	
  end

  def weeks_now  	
  	diff = (@now - @start_of_year)/60/60/24/7  	
  	return diff  	
  end

  def weeks_remaning
	  @weeks = (@end_of_year - @start_of_year)/60/60/24/7  	
  	weeks_remaning = @weeks - weeks_now
  	puts "Year ends after #{weeks_remaning} weeks."
  end

  def month_remaning
  	month_remaning = 12 - Time.now.month  	
  	puts "Year ends in #{month_remaning} months."
  end

end

reminder = Reminder.new()
reminder.weeks_remaning
reminder.month_remaning