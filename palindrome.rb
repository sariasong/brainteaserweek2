require 'pry'

def main_menu
  puts "Welcome to the Palindrome"
  puts "Let's check some words!"
  puts "Pleast input your palindrome:"
  string = gets.strip.split('')
  reverse = []
  string.size.times {reverse << string.pop}
  reverse.join
  if string == reverse.join
    puts "You entered a palindrome! Good job."
  else
    puts "Sorry. Your word is not a palindrome. Try again"
  end
end

while true
main_menu()
end