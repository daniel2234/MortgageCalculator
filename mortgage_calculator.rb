
def prompt(message)
	Kernel.puts("=>#{message}")
end

prompt(" Welcome to your own Mortgage Calculator. Enter your name.")

name = ''
	loop do 
		name = Kernel.gets().chomp()

		if name.empty?()
			prompt("Enter a valid name.")
		else
			break
		end
		
	end

	prompt('Hi #{name}')
