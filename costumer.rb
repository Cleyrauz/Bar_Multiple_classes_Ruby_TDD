class Costumer

  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
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
