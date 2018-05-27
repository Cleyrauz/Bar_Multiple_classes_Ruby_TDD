class Costumer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def costumer_effort_drink(drink)
    if @wallet >= drink.price
      @wallet -= drink.price
      return @wallet
  end
end 

end
