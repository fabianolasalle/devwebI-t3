# Load de classes externas
load "classes/customer.rb"
load "classes/ui.rb"

# Nome do arquivo a ser lido como memória
filename = "a.txt"

# Instanciacao de cliente
c = Customer.new
c.readBalanceFromFile(filename)

option = nil

# Lógica de menu
while option.to_s != "q"
	UI::showOptions
	option = UI::getInput.downcase.strip

	case option.to_s
	when "d"
		c.deposit(UI::showDeposit)
		c.showCurrentBalance()
	when "w"
		c.withdraw(UI::showWithdraw(c.balance))
		c.showCurrentBalance()
	when "b"
		c.showCurrentBalance()
	end
end

# Escrita de arquivo na memoria
c.writeBalanceToFile(filename)

print "\n"