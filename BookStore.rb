class BookStore
	
	attr_accessor :b_name, :author, :year
	@@stock = 0
	def initialize(n, a, y)
		@b_name = n
		@author = a
		@year = y
		
	end
	
	def increase_stock
		@@stock += 1
		puts "Increased stock value:#{@@stock}"
	end
	
	def decrease_stock
		@@stock -= 1
		puts "decreased stock value:#{@@stock}"
	end
	
	def current_stock
		puts "current stock value:#{@@stock}"
	end
	
	def set_name=(y)
		@year = y
	end
	def change_name(n)
		@b_name = n
	end
	
	def info
		 "Book name:#{b_name} author name:#{author} Year of publishing:#{year}"
	end
	def self.total_price(t)
		ti = t * @@stock
		p "Total stock : #{ti}"
	end  	
end
	obj = BookStore.new('Anna Karenina ',' Leo Tolstoy ','1995')
	puts obj.info
	obj.set_name ='1998'
	puts obj.info
	obj.change_name('Willington')
	puts obj.info
	obj.increase_stock
	obj.increase_stock
	obj.decrease_stock
	obj.current_stock
	BookStore.total_price(200)