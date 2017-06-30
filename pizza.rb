

#Aaron Cameresi			Pizza.rb 		6-27-2017

#make pizza, every iteration, different pizza;
#method for each part of the pizza;
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

def extraToppings

	#value townnn
	print "would you like extra toppings? press 1 for extra meat, 2 for extra cheese, or 3 for both, or 4 for nothing. \n"
	extraToppings_choice = gets.to_i

	case extraToppings_choice

	when 1
		print "(1) extra meat will be added.\n"

	when 2
		print "(1) extra cheese will be added.\n"

	when 3
		print "(1) extra meat and (1) extra cheese will be added.\n"

	when 4
		print "nothing extra will be added. Enjoy your pizza!\n"

	else
		print "That is not a valid option. Terminating program. . .\n"

	end
		
end


print "How many pizzas would you like to order?\n"

x = gets.to_i

pizza_count = 0

x.times do
	crust
	meat
	veggies
	specToppings
	sauce

	pizza_count = pizza_count + 1
	
	print "Pizza #{pizza_count} has #{crust} crust, #{meat}, #{veggies}, #{specToppings}, and #{sauce}.\n"
end

extraToppings
