class Customer
	def initialize()
		@balance = 100.0
	end

	def deposit(value)
		@balance += value.to_f
	end

	def withdraw(value)
		@balance -= value.to_f
	end

	def showCurrentBalance()
		print "Current balance is: #@balance\n"
	end 

	def outputBalance()
		print "Current balance is: #@balance\n"
	end
end