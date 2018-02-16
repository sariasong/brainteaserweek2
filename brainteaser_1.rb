require 'pry'

def menu
    puts "What numbers are in your array?"
    @user_input = gets.strip.downcase.to_i
    @user_array = []
    @user_array << @user_input
end

# def array
#     @user_array << @user_input
#     @user_array.each do |num|
#         puts num
#     end  
# end

def show_array
    puts "What would you like to do?"
    puts "1) Add to My Array"
    puts "2) Go to Next Step"
    puts "4) Exit"
    @user_choice = gets.strip.downcase.to_i
end

def choice    
    case @user_choice
    when 1
        menu()
    when 2
        high_low()
    when 3
        puts "Goodbye"
        exit!(true)
    else
        puts "Bad User Input, Try Again"
        menu()
    end
end
        
# def view_array
# @user_array.each do |num|
#     puts num
#     end
# end

def high_low
    puts "What would you like to see?"
    puts "1) Highest Value"
    puts "2) Lowest Value"
    @user_decision = gets.strip.downcase.to_i
end
    
def decision    
    case @user_decision
    when 1
        @user_array.max do |high|
            puts high
        end
    when 2
        @user_array.min do |low|
            puts low
        end
    else
        puts "Error, Try Again"
        show_array()
    end
end

while true
    menu()
    show_array()
    choice()
    decision()
end

