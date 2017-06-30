

#Aaron Cameresi			Pizza.rb 		

# make pizza, every iteration, different pizza;
# method for each part of the pizza;
# => returns type of crust, meats, veggies, special toppings, different sauces
# options for extra cheese, double meat
# ask how many random pizza
# return as string


def crust

	#code here
	thin = "thin"
	deep_dish = "deep dish"
	stuffed = "stuffed"
	crust_order = [thin, deep_dish, stuffed].sample

end

def meat

	#code here
	pepperoni = "pepperoni"
	sausage = "sausage"
	ham = "ham"
	meat_order = [pepperoni, sausage, ham].sample

end

def veggies

	#code here
	greenPepper = "green pepper"
	tomato = "tomato"
	spinach = "spinach"
	veggies_order = [greenPepper, tomato, spinach].sample

end

def specToppings

	#code here
	pinapple = "pinapple"
	olives = "olives"
	anchovies = "anchovies"
	specToppings_order = [pinapple, olives, anchovies].sample

end

def sauce

	#saucin on youuuu
	marinara = "marinara"
	pesto = "pesto"
	sauce_order = [marinara, pesto].sample

end

def delivery(price)

	distance = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample
	distance_int = distance

	print "will this pizza be for delivery? (y/n)\n"
	delivery_choice = gets.chomp
		
		case delivery_choice
		
		when "y"
			
			print "Your pizza will be delivered shortly. Thank you for your business!\n"
			price += distance_int

			return price
		
		when "n"
			print "your pizza will be hot 'n ready upon your arrival. Thank you for your business!\n"
		
		else
			print "wrong boi\n"
		
		end

	return price

end

def tip(price)

	print "would you like to add a tip? (y/n)\n"
	tip_choice = gets.chomp

	case tip_choice

	when "y"

		print "please enter your tip amount: \n"

		tip_amount = gets.to_i

		price += tip_amount

		return price

	when "n"

		print "You have selected to not tip.\n"

	else
		print "wrong boi\n"

	end

end

def pizza_orders(price)

	print "How many pizzas would you like to order?\n"

	x = gets.to_i

	pizza_count = 1


	x.times do
		crust
		meat
		veggies
		specToppings
		sauce

		print "Pizza #{pizza_count} has #{crust} crust, #{meat}, #{veggies}, #{specToppings}, and #{sauce}.\n"

		print "would you like extra toppings? press 1 for extra meat, 2 for extra cheese, or 3 for nothing.\n"
		extraToppings_choice = gets.to_i

		case extraToppings_choice

		when 1
			print "(1) extra meat will be added.\n"
			price += 3.18

		when 2
			print "(1) extra cheese will be added.\n"
			price += 2.12

		when 3
			print "nothing extra will be added. Enjoy your pizza!\n"

		else

			#need to get this to loop

			print "That is not a valid option. Please enter 1, 2, or 3.\n"
			extraToppings_choice = gets.to_i 
		end

		pizza_count += 1
		
	end

		price += (x * 5 * 1.06)

		
	print "Your total is: $#{price}.\n"

end

price = 0

delivery(price)

tip(price)

pizza_orders(price)
