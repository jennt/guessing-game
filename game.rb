require 'pry'

def is_numeric?(guess, tries)
  begin
    return Integer(guess)
  rescue
    puts "Not a valid guess. Guess again"
    guess = gets.chomp
    tries += 1
    if tries == 5
      puts "you lose. It took #{tries} tries."
      exit
    end
    is_numeric?(guess, tries)
  end
end

def input_valid?(guess, range)
  begin
    guess = guess.to_i
    range.include?(guess)
  rescue
    puts "Guess not in range. Guess again"
    guess = gets.chomp
  end
end

def check_guess(guess, answer, tries)
  if tries == 5
    puts "you lose. It took #{tries} tries."
  elsif answer < guess.to_i
    puts 'Too high'
  elsif answer > guess.to_i
    puts 'Too low'
  else answer == guess.to_i
    puts "You won! It took #{tries} tries."
    exit
  end
end

tries = 0
range = [(1..100)]
answer = rand(100)

puts "guess a number"
guess = gets.chomp
tries += 1

until tries == 7

  is_numeric?(guess, tries)
  input_valid?(guess, range)
  check_guess(guess, answer, tries)
  tries += 1

  if tries == 6
    puts "5 tries you lose"
    exit
  end

  puts "Guess again"
  guess = gets.chomp.to_i
  puts "Answer: #{answer}"
end

#same guess twice
# take 6 tries when you mix numbers n letters(letters first)
