class Ingredient
    attr_reader :name, :price
    def initialize(name, price)
      @name = name
      @price = price
  end
end

class MilkShake
	attr_reader :price_of_milkshake, :ingredients, :base_price
    def initialize
      @base_price = 3
      @ingredients = [ ]    
    end

    def add_ingredient(ingredient)
      @ingredients.push(ingredient)
    end

    def price_of_milkshake
  	  #Let's establish what our counter should be before we start adding ingredients into the mix
  	  total_price_of_milkshake = @base_price
  	  #Add each ingredients price to our total
  	  @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
  	  end
      #return  our total price to whoever called for it
      total_price_of_milkshake
    end
end

class ShakeShop
	attr_reader :milkshakes
	def initialize
		@checkout_price = 0
		@milkshakes = [ ]
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def checkout
		total_check_out = @checkout_price
		@milkshakes.each do |milkshake|
			total_check_out += milkshake.price_of_milkshake
		end
		print "TOTAL PRICE FOR ALL YOUR MILKSHAKES: #{total_check_out}"
	end

end

# List of all available ingredients
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 3)
strawberry = Ingredient.new("Strawberry", 4)
vanilla = Ingredient.new("Vanilla", 5)
cookies_cream = Ingredient.new("Cookies and Cream", 6)

# Shakes created with its ingredients
michelle_milkshake = MilkShake.new
michelle_milkshake.add_ingredient(banana)
michelle_milkshake.add_ingredient(strawberry)

sarah_milkshake = MilkShake.new
sarah_milkshake.add_ingredient(vanilla)
sarah_milkshake.add_ingredient(chocolate_chips)

alvaro_milkshake = MilkShake.new
alvaro_milkshake.add_ingredient(cookies_cream)

# Add milkshakes to checkout list
ironhack_tab = ShakeShop.new
ironhack_tab.add_milkshake(michelle_milkshake)
ironhack_tab.add_milkshake(sarah_milkshake)
ironhack_tab.add_milkshake(alvaro_milkshake)

# Print out the total
puts ironhack_tab.checkout
