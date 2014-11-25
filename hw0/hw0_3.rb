class BookInStock
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		throw ArgumentError if isbn == '' || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		%Q{$#{"%.2f" % @price }}
	end
end