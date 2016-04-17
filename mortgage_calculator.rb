require 'pry'

def prompt(message)
	Kernel.puts("=> #{message}")
end


prompt(" Welcome to your own Mortgage Calculator. Enter your name.")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure you use a valid name")
  else
    break
  end
end

prompt("Hello #{name}. We will calculate your loan duration in months based on your monthly rate.")

#main loop
loop do
	loan_Amount = ''
	loop do
		prompt("What is your monthly loan amount?")
		loan_Amount = Kernel.gets().chomp()
		break
	end

	interest = ''
	loop do
		prompt("What is your interest rate?")
		interest = Kernel.gets().chomp()
		break
	end

	loan_Duration = ''
	loop do
		prompt("What is your loan duration (months)?")
		loan_Duration = Kernel.gets().chomp()
		break
	end
	prompt("Do you want to perform another calculation? (Y to calculate again) ")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you #{name} for using the Mortgage Calculator!")
