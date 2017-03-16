load "classes/customer.rb"
load "classes/ui.rb"

c = Customer.new
# c.outputBalance
option = nil

while option.to_s != "q"
	UI::showOptions
	option = UI::getInput.downcase.strip

	case option.to_s
	when "d"
		c.deposit(UI::showDeposit)
	when "w"
		c.withdraw(UI::showWithdraw)
	when "b"
		c.showCurrentBalance()
	end
end

print "\n"