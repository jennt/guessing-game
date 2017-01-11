require 'pry'

def input_valid?(guess, range)
  begin
  range.include?(guess)
  rescue
  puts "Not a valid guess. Guess again"
  guess = gets.chomp
  end
end

def check_guess(guess, answer)
  puts 'Too high' if answer < guess
  puts 'Too low'  if answer > guess
  puts 'You won'  if answer == guess
end

tries = 0
range = [(1..100)]
answer = rand(100)

puts "guess a number"
guess = gets.chomp.to_i

until tries == 4

  input_valid?(guess, range)
  check_guess(guess, answer)
  tries += 1
  puts "Guess again"
  guess = gets.chomp.to_i

end
