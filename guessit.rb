#! /usr/bin/env ruby

def process_input(input)
  Integer(input.strip!)
rescue ArgumentError
  puts "Sorry, #{input} doesn't seem to be a number"
end

def check_answer(guess, correct_answer)
  if correct_answer > guess
    puts 'Too small, try again!'
  elsif correct_answer < guess
    puts 'Too big, try again!'
  else
    puts 'You got it!'
    true
  end
end

the_number = rand(99) + 1
puts "I'm thinking of a number between 1 and 100, can you guess it?"

correct = false
while !correct do
  print 'What is your guess?: '
  guess = process_input(gets)
  next if not guess
  correct = check_answer(guess, the_number)
end
