require("minitest/autorun")
require("minitest/rg")

require_relative("../costumer")
require_relative("../pub")
require_relative("../drink")

class CostumerTest < MiniTest::Test

    def setup
      @costumer = Costumer.new("David", 60, 23, 1)
      @costumer2 = Costumer.new("Flor", 30, 15, 0)
      @drink1 = Drink.new("Wine", 5, 2)
    end

    def test_costumer_has_name
      assert_equal("David", @costumer.name)
    end
    def test_costumer_has_money
      assert_equal(60, @costumer.wallet)
    end

    def test_costumer_has_an_age
      assert_equal(23, @costumer.age)
    end

    def test_costumer_has_drunkenness_level
      assert_equal(1, @costumer.drunkenness)
    end

    def test_drunkenness_level_up
      @costumer.buy_a_drink(@drink1)
      assert_equal(3, @costumer.get_drunkenness_level_up(@drink1))
    end

  end
