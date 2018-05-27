require("minitest/autorun")
require("minitest/rg")

require_relative("../pub")
require_relative("../drink")
require_relative("../costumer")

class PubTest < MiniTest::Test

    def setup
      @pub = Pub.new("Counting House", 40)
      @costumer = Costumer.new("Raul", 20)
      @drink1 = Drink.new("Wine", 5)
    end

  def test_pub_has_a_name
    assert_equal("Counting House", @pub.name)
  end

  def test_pub_has_money
    assert_equal(40, @pub.till)
  end

  def test_costumer_effort_drink
    assert_equal(15, @costumer.costumer_effort_drink(@drink1))
  end


end
