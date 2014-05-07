class Expense
	attr_accessor :id, :item, :amount

	def initialize(id, item, amount)
		self.id = id
		self.item = item
		self.amount = amount
	end

	def find(id)
		@count = 0
		while @count < expenses.length
			if expenses[@count] = id
				return expenses[@count]
			else
				@count = @count + 1
			end
		end
	end
end