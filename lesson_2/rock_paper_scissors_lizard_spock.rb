# VALID_CHOICES = ["rock", "paper", "scissors"]
VALID_CHOICES = %w(rock paper scissors lizard spock)
CHOICE_HASH = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}
a = '123'

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  # puts CHOICE_HASH[first]
  CHOICE_HASH[first].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

prompt("Welcome to Rock Paper Scissors Lizard Spock!")
prompt("This will be a best of 5 match to determine the Grand Winner.")
prompt("Before we begin, what is your name?")
user_name = Kernel.gets().chomp()
prompt("Hello #{user_name}!")

user_score = 0
comp_score = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    # check that user has given one of the three choices

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That is not a valid choice.')
    end
  end

  computer_choice = VALID_CHOICES.sample()
  prompt("You chose #{choice}; Computer chose #{computer_choice}.")
  display_result(choice, computer_choice)

  # prompt("Do you want to play again?")
  # answer = Kernel.gets.chomp()
  # break unless answer.downcase().start_with?('y')

  if win?(choice, computer_choice)
    user_score += 1
  elsif win?(computer_choice, choice)
    comp_score += 1
  end

  prompt("The score is now
     #{user_name}: #{user_score} vs Computer: #{comp_score}")

  if user_score == 3
    prompt("Well done, victory is yours!")
    break
  elsif comp_score == 3
    prompt("Unlucky, but the Computer has bested this time!")
    break
  end
end

prompt("Thank you for playing, goodbye!")
