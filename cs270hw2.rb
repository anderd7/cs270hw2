#Name:  David Anderson, CS270, Assignment 2
#Description:  A series of brief programs that demonstrate basic knowledge of Ruby.
#Input:  Prog1: name, prog2: number, prog3: number or q, prog4: number, prog5: name and age 
#Output:  Prog1: personalized greeting, prog2: if number is even or odd, prog3: same as prog2, prog4: total sum from 1 to number entered, prog5: personalized greeting with name and age, prog6: same as prog4.

# Program 1
print "What is your name? "
name = gets.chomp
puts "Hello #{name}, I hope you're having a great day."
puts

# Program 2
print "Please enter a number. "
num = gets.chomp.to_i

# Finds remainder of num to see if it is an even or odd number.
if num % 2 == 0
  puts "The number #{num} is even."
else
  puts "The number #{num} is odd."
end
puts

#Program 3
print "Please enter another number or q to quit. "
input = gets.chomp.upcase

# Creates loop that only ends if q is entered.
while input != "Q"
  input = input.to_i
   if input % 2 == 0
     puts "The number #{input} is even."
   else
     puts "The number #{input} is odd."
   end  
  print "Please enter another number or q to quit. "
  input = gets.chomp.upcase
end
puts

#Program 4
print "Please enter a number. "
num2 = gets.chomp.to_i

#Creates empty array
arr = []

#Fills in array with all numbers moving from 1 to num2
for i in 1 .. num2
  arr << i
end

sum = 0
# Runs through each vaule of the array index and adding them to each other to find the sum.
arr.each do |j|
sum += j
end
puts "The sum from 1 to #{num2} is #{sum}."
puts

#Program 5
print "What is your name? "
name = gets.chomp
print "What is your age? "
age = gets.chomp

#Inserts name as the key and age as the value
h = {name => age}

#Runs through each key/value pair and prints them
for k,v in h
puts "Hello, #{k}, I see you are #{v} years old."
end
puts

#Program 6
print "Please enter a number. "
num3 = gets.chomp.to_i

#Creates empty array 
arr2 = []

#Fills in array
for i in 1 .. num3
  arr2 << i
end

#addup:  Passes in arr2 and finds the sum of all the vaules moving from 1 to num3.
#Parameters:  arr2
#Return Value:  sum2
def addup(arr2)
  sum2 = 0
  arr2.each do |j|
  sum2 += j
  end
  return sum2
end

puts "The sume from 1 to #{num3} is #{addup(arr2)}."
