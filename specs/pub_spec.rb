require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../drink")
require_relative("../costumer")

class PubTest < MiniTest::Test

    def setup
      @pub = Pub.new("Counting House", 40)
      @costumer = Costumer.new("Raul", 20, 25)
      @costumer2 = Costumer.new("Pedro", 2, 54)
      @drink1 = Drink.new("Wine", 5)
      @drink2 = Drink.new("Beer", 3)
    end

    def test_pub_has_a_name
      assert_equal("Counting House", @pub.name)
    end

    def test_pub_has_money
      assert_equal(40, @pub.till)
    end

    def test_sell_a_drink
      assert_equal(5, @pub.sell_a_drink(@costumer, @drink1))
    end

    def test_sell_a_drink__costumer_can_not_effort_drink
      assert_equal("Please go home", @pub.sell_a_drink(@costumer2, @drink1))
    end

    def test_costumer_buy_drink
      assert_equal(5, @costumer.buy_a_drink(@drink1))
    end

    def test_remove_price_from_wallet
      assert_equal(15, @costumer.remove_drink_price_from_wallet(@drink1))
    end

    def test_add_drinks_to_pub
      assert_equal(1, @pub.add_drinks(@drink1))
    end

    def test_increase_till
      money = @costumer.buy_a_drink(@drink1)
      assert_equal(45, @pub.add_money_to_till(money))
    end

  end
