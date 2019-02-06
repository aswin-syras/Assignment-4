class BookStore
	
	attr_accessor :n, :y
	attr_reader :a
	def initialize(n, a, y)
		@b_name = n
		@author = a
		@year = y
		
	end
	def stock_method(stock)
		 @stock = stock
	end
	
	def increase_stock
		@stock += 1
		puts "Increased stock value:#{@stock}"
	end
	
	def decrease_stock
		@stock -= 1
		puts "decreased stock value:#{@stock}"
	end
	
	def current_stock
		puts "current stock value:#{@stock}"
	end
	
	def info
		 "Book name:#{@b_name} author name:#{@author} Year of publishing:#{@year}"
	end
	def change_name(n)
		@b_name = n
		puts 'Book Name is #{@b_name}' 
	end
	def self.total_price(t ,s)
		ti = t.to_i * s.to_i
		p "Total stock : #{ti}"
	end  	
end
	obj = BookStore.new('Anna Karenina ',' Leo Tolstoy ','1995')
	puts obj.info
	obj.y = "1998"
	puts "Updated year:#{obj.y}"
	obj.change_name('William')
	obj.info
	BookStore.total_price(2,3)
	obj.stock_method(0)
	obj.increase_stock
	obj.increase_stock
	obj.decrease_stock
	obj.current_stock