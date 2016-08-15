# .times loop
20.times { |x| puts x + 1 }

# .times loop
20.times do |x|
  puts x + 1
end

# .times loop reverse
20.times do |x|
  puts 20-x
end

# print a number vaid if it is between 1 and 10 and invalid otherwise
def check_valid
  puts "Give me a random number"
  num = gets.to_i
  if num >=1 && num <=10
    puts "Valid"
  else
    puts "Invalid"
  end
end

#Purpose: prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
#Signature: nothing --> 1, 2, fizz, 4, buzz...
#Examples: fizz_buzz --> 1,2,fizz, 4, buzz...
def fizz_buzz
  100.times do |x|
    if x%3==0 && x%5==0
      puts "FizzBuzz"
    elsif x%3==0
      puts "Fizz"
    elsif x%5==0
      puts "Buzz"
    else
      puts x
    end
  end
end

#Purpose: Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
#Signature: int, int --> int
#Examples: sum_these_numbers(1,2) --> 3
#          sum_these_numbers(3,-1) --> 2
def sum_these_numbers(num1,numb2)
  puts num1 + numb2
end

#Purpose: Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise
#Signature int --> boolean
#Examples: is_even(1) --> false
#          is_even(2) --> true
#          is_even(0) --> false?
def is_even(int)
  if int.even?
    puts "True"
  else
    puts "False"
  end
end

#Purpose: Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
words = ["run", "fast", "today", "mountain", "beach" , "jog"]
words.each{ |w| puts w.upcase }

# Purpose: Write a method which calls another method, then uses its return value.
def hello
  # prints hello friend to the terminal
  puts "hello, friend"
end

def speak
  # calls hello method (prints hello friend to termial)
  hello
end

# Purpose: Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
def valid_date
  puts "enter a month: "
  month = gets.to_i
  puts "enter a day: "
  day = gets.to_i
  puts "enter year: "
  year = gets.to_i
  if (month >= 1 || month <= 12) && year.length == 4 && is_day_valid(month,day,year) == true
    puts "true"
  else
    puts "false"
  end
end

# Purpose: To determine if the day is a valid day for its month
# Signature: month, day --> true
# Example: is_day_valid(1,26) --> true
#          is_day_valid(2,31) --> false
def is_day_valid(month, day, year)
  month_to_number_of_days {
    1: 31,
    2: -1,
    3: 31,
    4: 30,
    5: 31,
    6: 30,
    7: 31,
    8: 31,
    9: 30,
    10: 31,
    11: 30,
    12: 31
  }

  if month == 2 && year % 4 == 0 && !year % 100 == 0 || year % 400 == 0
    day < 29
  
  elsif day < month_to_number_of_days[:month]

end
