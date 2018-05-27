require("minitest/autorun")
require("minitest/rg")

require_relative("../drink")
require_relative("../pub")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Wine", 7)
  end

  def test_drink_has_a_name
    assert_equal("Wine", @drink.name)
  end

  def test_drink_has_a_price
    assert_equal(7, @drink.price)
  end


  end
