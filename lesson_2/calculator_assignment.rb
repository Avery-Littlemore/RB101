# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the answer

require 'yaml'
LANGUAGE = 'es'

MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num == '0'
    return true
  end
  if num.count("a-zA-Z") > 0
    return false
  end
  num.to_i() != 0
end

# another option would be:
=begin
def integer?(input)
  input.to_i.to_s == input
end
=end

def operation_to_message(op)
  word = case op
         when '1'
           return 'Adding'
         when '2'
           return 'Subtracting'
         when '3'
           return 'Multiplying'
         when '4'
           return 'Dividing'
         end
  x = 'useless line of code to test return value'
  # word # redundant as shown, but an alternate to writing return on each of the case whens
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  # MSG can be anything
  # it is a delimiter, so it just has to match on either end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide 
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must enter 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =
    case operator
    when '1'
      number1.to_i() + number2.to_i()
    when '2'
      number1.to_i() - number2.to_i()
    when '3'
      number1.to_i() * number2.to_i()
    when '4'
      number1.to_f() / number2.to_f()
    end

  # if we had done to_i, the result would have been an integer division
  # (AKA, round down to nearest integer)

  # if is not a block, so we can initialize a variable inside of it

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")

# Kernel.puts(number1.inspect())