class UI
	def self.showOptions()
		print "D - Deposit\n"
		print "W - Withdraw\n"
		print "B - Inspect balance\n"
		print "Q - Quit\n\n"
	end

	def self.showDeposit()
		value = 0
		while (self.validateDepositValue(value) == false)
			print "Enter the deposit value: "
			value = gets.chomp.strip
		end

		return value
	end

	def self.showWithdraw(currentBalance)
		value = nil
		while (self.validateWithdrawValue(value, currentBalance) == false)
			print "Enter the withdraw value: "
			value = gets.chomp.strip
		end

		return value
	end

	def self.getInput
		print "Select an option and press [enter]: "
		return gets.chomp.strip
	end

	def self.showWrongOption
		print "Please select a valid option\n\n"
	end

	# Realiza validação do valor inserido como 
	# válido
	def self.validateDepositValue(value)
		return value.to_f > 0
	end

	# Realiza validação do valor inserido com o valor
	# corrente da conta
	def self.validateWithdrawValue(value, currentBalance)
		if value == nil
			return false
		end

		if value.to_f <= 0
			print "Enter a valid amount greater than 0\n\n"
			return false
		end

		if (currentBalance < value.to_f)
			print "Not enough funds\n\n"
			return false
		end

		return true
	end
end
