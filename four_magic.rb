require 'pry'
require 'humanize'

def number

  puts "Welcome to Riddle Hell. Give us your number aka your soul:"
  answer = gets.strip.to_i.humanize
  choice = answer.count
  puts "#{answer} is #{choice} "


end

number
