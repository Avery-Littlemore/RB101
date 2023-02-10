# loan amount
# APR
# load duration

# calculate monthly interest, load duration in months, monthly payment

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
require "pry"

def pos_number?(num)
  (num.to_i.to_s == num || num.to_f.to_s == num) && num.to_f > 0
end

loan_amount = nil
apr = nil
duration_years = nil

puts "Welcome to the Loan Calculator!"

loop do
  puts "Please enter your loan amount: "
  loan_amount = gets.chomp
  pos_number?(loan_amount) ? break : puts("That number was not valid. Make sure to only enter a positive number.")
end

loop do
  puts "Please enter your Annual Percentage Rate (ex., 15.3 for 15.3%): "
  apr = gets.chomp
  pos_number?(apr) ? break : puts("That number was not valid. Make sure to only enter a positive number.")
end

loop do
  puts "Please enter your loan duration in years: "
  duration_years = gets.chomp
  pos_number?(duration_years) ? break : puts("That number was not valid. Make sure to only enter a positive number.")
end

monthly_interest = apr.to_f / 12 / 100
duration_months = duration_years.to_f * 12
monthly_payment = loan_amount.to_f * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))

interest_prompt = <<-MSG
Thank you for your inputs! Please see the results below:
Your monthly interest will be #{format('%.2f', monthly_interest * 100)}%.
Your duration in months will be #{duration_months}.
To meet your goals, your monthly payment will be $#{format('%.2f', monthly_payment)}.
MSG

puts interest_prompt
