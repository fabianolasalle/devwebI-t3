class Customer

	# Definição de variavel publica
	def balance
		@balance
	end

	# Inicializacao constante
	def initialize()
		@balance = 100.0
	end

	def deposit(value)
		@balance += value.to_f
		print "Success!\n"
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

	# Le o arquivo de memoria e atribui o conteudo
	# para a propriedade
	def readBalanceFromFile(filename)
		begin
			@balance = File.read(filename)
		rescue => err
			print "No previous record was found. Starting your account with 100.\n\n"
		end
	end

	# Escreve no arquivo de memoria o conteudo
	# da propriedade
	def writeBalanceToFile(filename)
		File.write(filename, @balance)
	end
end