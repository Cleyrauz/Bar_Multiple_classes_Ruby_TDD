class Costumer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def costumer_effort_drink(drink)
    if @wallet >= drink.price
      # @wallet -= drink.price
      return "What can of drink do you want?"
    else
      return "Please, go home"
  end
end

def buy_a_drink(drink)
  @wallet -= drink.price
  return drink.price
end

  def remove_drink_price_from_wallet(drink)
    @wallet -= drink.price
    return @wallet
  end


end
