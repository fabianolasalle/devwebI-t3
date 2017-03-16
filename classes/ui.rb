class UI
	def self.showOptions()
		print "D - Deposit\n"
		print "W - Withdraw\n"
		print "B - Inspect balance\n"
		print "Q - Quit\n\n"
	end

	def self.showDeposit()
		print "Enter the deposit value: "
		value = gets.chomp.strip

		# if (self.validateDepositValue(value))
			return value
		# end

		# self.showDeposit
	end

	def self.showWithdraw()
		print "Enter the withdraw value: "
		value = gets.chomp.strip
	end

	def self.getInput
		print "Select a option: "
		return gets.chomp.strip
	end

	# def self.validateDepositValue(value)
	# 	return value.is_a? Numeric || value > 0
	# end
end
