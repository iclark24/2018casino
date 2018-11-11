class Roulette

  attr_accessor :user
  def initialize(user)
    @bets = 0
    user = user
    makeoptions(user)

  class Menuitem
    attr_accessor :name, :price, :type, :cal, :carb, :fat
    def initialize(name, price, type, cal, carb, fat)
      @name = name
      @price = price
      @type = type
      @cal = cal
      @carb = carb
      @fat = fat
    end
  end

  def makemenu
    @steak = Menuitem.new("Steak", "12.50", "Main", "Many", "None", "Gallons")
    @spaghetti = Menuitem.new("Spaghetti", "8.00", "Main", "Many", "Tons", "Zilch")
    @burger = Menuitem.new("Burger", "9.50", "Main", "Like, so much", "Some", "A Scary Amount")
    @hotdog = Menuitem.new("Hotdog", "6.50", "Main", "A Fair Amount", "Some", "Not Too Much")
    @fries = Menuitem.new("Fries", "3.50", "Side", "Alot", "Alot", "Still, Alot")
    @salad = Menuitem.new("Salad", "3.50", "Side", "Few", "Almost Nonexistant", "Almost Nonexistant")
    @vegetables = Menuitem.new("Vegetables", "3.50", "Side", "Some", "Some", "Few")
    @soda = Menuitem.new("Soda", '1.50', "Drink", "Like, so much", "Lots", "Some")
    @water = Menuitem.new("Water", "0.00", "Drink", "What?", "This is water", "There's nothing in it. It's water")
    @beer = Menuitem.new("Beer", "5.00", "Drink", "Many", "So Many", "None")
    @wine = Menuitem.new("Wine", "10.00", "Drink", "Many", "This is a dry red, so not alot", "Few")
    @cake = Menuitem.new("Cake", "8.00", "Dessert", "Oh", "Oh geez", "Like, wow. Not good for you")
    @pie = Menuitem.new("Pie", "8.00", "Dessert", "Same", "As", "Above")
    @icecream = Menuitem.new("Ice Cream", "5.00", "Dessert", "So", "Many", "Everything")
    startup(user)
  end