require 'pry'

def input_valid?(guess, range)
  begin
  range.include?(guess)
  rescue
  puts "Not a valid guess. Guess again"
  guess = gets.chomp
  end
end

def check_guess(guess, answer, tries)
  if tries == 5
    puts "you lose"
  elsif answer < guess
    puts 'Too high'
  elsif answer > guess
    puts 'Too low'
  else answer == guess
    puts 'You won'

  end
end

tries = 0
range = [(1..100)]
answer = rand(100)

puts "guess a number"
guess = gets.chomp.to_i

until tries == 5

  input_valid?(guess, range)
  check_guess(guess, answer, tries)
  tries += 1

  if tries == 5
    puts "5 tries you lose"
    exit
  end

  puts "Guess again"
  guess = gets.chomp.to_i
  puts "Answer: #{answer}"
# binding.pry
end
