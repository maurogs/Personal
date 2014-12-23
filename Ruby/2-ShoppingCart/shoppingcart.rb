class ShoppingCart
	@@menu_selector = 0
	@@final_price = 0
	@@bananas_number = 0
	@@oranges_number = 0
	@@rice_number = 0
	@@vacuum_number = 0
	@@anchovies_number = 0



	def initialize
		day_of_week
		show_discounts
		menu_selection
	end

	def day_of_week
		time = Time.new
		@week_day_number = time.wday
		case @week_day_number
		when 0
    		@week_day_word = "Sunday"
		when 1
    		@week_day_word = "Monday"
		when 2
    		@week_day_word = "Tuesday"
		when 3
    		@week_day_word = "Wednesday"
   		when 4
    		@week_day_word = "Thursday"
		when 5
    		@week_day_word = "Friday"
		when 6
    		@week_day_word = "Saturday"
    	end
	end

	def show_products
		puts """
			 --------------PRODUCTS-------------- 
			|  1 - Bananas: 10€ / $10 each       |
			|  2 - Orange Juice: 10€ / $10 each  |
			|  3 - Rice: 1€ / $1 per unit        |
			|  4 - Vacuum Cleaner: 150€ / $150   |
			|  5 - Anchovies: 2€ / $2 each       |
			|  6 - Back to menu                  |
			 ------------------------------------ 
		"""
		print "                         ---> "
	end

	def products_selection
		system "clear"	
		@products_selector = 0
		while @products_selector != 6
			show_products
			@products_selector = gets.chomp.to_i
			selected_product(@products_selector)
			system "clear"	
			cart_status
		end
	end

	def selected_product(product)
		case product
		when 1..5
			system "clear"	
			buy_product(product)
		end
	end

	def buy_product(product_choice)
		case product_choice
		when 1
			@item = "Bananas"
			@price = 10
			items_number(@item, @price)
			@@bananas_number += @number_items
		when 2
			@item = "Orange Juice"
			@price = 10
			items_number(@item, @price)
			@@oranges_number += @number_items
		when 3
			@item = "Rice"
			@price = 1
			items_number(@item, @price)
			@@rice_number += @number_items
		when 4
			@item = "a Vacuum Cleaner"
			@price = 150
			items_number(@item, @price)
			@@vacuum_number += @number_items
		when 5
			@item = "Anchovies"
			@price = 2
			items_number(@item, @price)
			@@anchovies_number += @number_items
		end
	end

	def items_number(item, price)
		@number_items = -1
		while (@number_items < 0) | (@number_items > 10)
			puts "			--------------------------------"
			puts "			--------------------------------"
			puts "			--------------------------------"
			puts "		              You wanna buy #{item}."
			puts "		             It costs #{price} euros each."
			puts "                          How many #{item} do you want?"
			puts "			--------------------------------"	
			puts "			---------(Max 10 items)---------"
			puts "			--------------------------------"
			puts
 			print "			----> "
			@number_items = gets.chomp.to_i
			@@final_price += (@number_items * price) 
		end
	end

	def cart_status
		press_key = "c"
		while (press_key != "\n")
			puts " ---------------------------------------------------------------------------------------- "
			puts "| ------------------------------------CART STATUS--------------------------------------- |"
			puts "| -------------------------------------------------------------------------------------- |"
			if 	@@bananas_number > 0
				puts "|                                  Bannanas: #{@@bananas_number} items.                                    |"
			end
			if 	@@oranges_number > 0
				puts "|                                Orange Juice: #{@@oranges_number} items.                                  |"
			end
			if 	@@rice_number > 0
				puts "|                                     Rice: #{@@rice_number} items.                                     |"
			end
			if 	@@vacuum_number > 0
				puts "|                               Vacuum Cleaner: #{@@vacuum_number} items.                                 |"
			end
			if 	@@anchovies_number > 0
				puts "|                                 Anchovies: #{@@anchovies_number} items.                                    |"
			end
			if (@@bananas_number < 1) & (@@oranges_number < 1) & (@@rice_number < 1) & (@@vacuum_number < 1) & (@@anchovies_number < 1)
				puts "|                                  No items on cart.                                     |"
			end
			puts " ---------------------------------------------------------------------------------------- "
			puts "|                                   TOTAL: #{@@final_price} euros.                                     |"			
			puts " ---------------------------------------------------------------------------------------- "
			puts " ---------------------------------------------------------------------------------------- "
			puts "|                                Press Enter to continue...                              |"
			puts " ---------------------------------------------------------------------------------------- "
			press_key = gets
		end

	end

	def show_discounts
		press_key = "c"
		while (press_key != "\n")
			puts " ---------------------------------------------------------------------------------------- "
			puts "| --------------------------------------DISCOUNTS--------------------------------------- |"
			puts "| -------------------------------------------------------------------------------------- |"
			puts "|                          Fruits on weekends have a 10% discount.                       |"
			puts "|                 If housewares price is more than 100€ / $100, 5% discount.             |"
			puts "|  If you have more than 5 items in the cart, you got a 10% discount for that purchase.  |"
			puts " ---------------------------------------------------------------------------------------- "
			if (@week_day_number < 1) | (@week_day_number > 5)
				puts "----------------------------Today we have 10% fruits discount-----------------------------"
			else
				puts "| -----------------------Today is #{@week_day_word}, no fruit discount today---------------------- |"
			end
			puts " ---------------------------------------------------------------------------------------- "
			puts " ---------------------------------------------------------------------------------------- "
			puts "                                 Press Enter to continue...                               "
			puts " ---------------------------------------------------------------------------------------- "
			press_key = gets
		end
	end

	def show_menu
		puts """
			 --------------MENU-------------- 
			|  1 - Buy a Product             |
			|  2 - Show Discounts            |
			|  3 - See the cart status       |
			|  4 - Check out                 |
			 -------------------------------- 
		"""
		print "                         ---> "
	end

	def bye_bye
			puts " ---------------------------------------------------------------------------------------- "
			puts "|                                       Thank You                                        |"
			puts " ---------------------------------------------------------------------------------------- "
			puts ""
			puts "                                    Subtotal: #{@@final_price} euros."
			puts
			puts
			puts
			puts
	end 


	def menu_selection
		while @@menu_selector != 4 
			system "clear"
			show_menu
			@@menu_selector = gets.chomp.to_i

			case @@menu_selector
			when 1
				system "clear"
				products_selection
			when 2
				system "clear"
				show_discounts
			when 3
				system "clear"
				cart_status
			end
		end
		system "clear"
		bye_bye
	end


end


system "clear"
cart = ShoppingCart.new




