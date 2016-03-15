class ShoppingCart
  attr_reader :items, :checkout
  def initialize
    @items = []
    @costs = 0
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
    total_checkout = @costs
    @items.each do |item|
      total_checkout += item.price
    end

    if @items.length > 5
      total_checkout - (total_checkout * 0.10)
    else
      total_checkout
    end
  end
end

class Item
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def price
    @price
  end

end

class Houseware
  attr_reader :name, :price
  def initialize(name,price)
    @name = name
    @price = price
  end

  def price
    if @price > 100
      @price - (@price * 0.05)
    else
      @price
    end
  end
end

class Fruit
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
      shopping_day = Time.new
      if shopping_day.saturday? || shopping_day.sunday?
        @price - (@price * 0.10)
      else 
        @price
      end
    end
end

# Items, Housewares and Fruits

vacuum = Houseware.new("Vacuum", 249)
hangers = Houseware.new("Hangers", 30)
almonds = Item.new("Almonds", 10)
oatmeal = Item.new("Oatmeal", 8)
bananas = Fruit.new("Bananas", 3)
oranges = Fruit.new("Oranges", 4)

alvaro_cart = ShoppingCart.new
alvaro_cart.add_item(vacuum)
alvaro_cart.add_item(hangers)
alvaro_cart.add_item(almonds)
alvaro_cart.add_item(oatmeal)
alvaro_cart.add_item(bananas)
alvaro_cart.add_item(oranges)

puts "TOTAL:"
puts "\t$#{alvaro_cart.checkout}"
