puts '------------------'
puts '| GUESSING GAME  |'
puts '------------------'

print 'What is your name? '
name = gets.chomp

if name
  puts "Hello, #{name}."
  puts 'Welcome to the guessing game.'
  puts 'I will choose a random number between 0 and 10.'
  puts 'You will get 3 chances to guess what number it is.'
end

MAX_GUESSES = 3
random = rand(0, 11)

1.upto(MAX_GUESSES) do |guesses|
  print "Guess #{guesses}: "
  your_guess = gets.chomp.to_i

  if your_guess == random
    puts "Great guessing #{name}."
    puts "My number was #{random}"
    break
  else
    puts "Try again #{name}."
  end
end
puts "My number was #{random}"
puts 'Great game'
