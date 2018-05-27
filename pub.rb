class Pub

  attr_accessor :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

#A Customer should be able to buy a Drink from the Pub, reducing
#the money in its wallet and increasing the money in the Pub's till
  def add_drinks(drink)
    @drinks.push(drink)
    return @drinks.length
  end

  def add_money_to_till(money)
     @till += money
     return @till
  end

  def costumer_can_effort_drink(costumer, drink)
    if costumer.wallet >= drink.price
      return "Welcome! What do you want to drink?"
    else
      return "Please go home"
    end
  end


  def sell_a_drink(costumer, drink)

    if costumer.age >= 21
     costumer.wallet >= drink.price
      costumer.wallet -= drink.price
      return drink.price
    else
      return "Please go home"
    end
  end


  end
