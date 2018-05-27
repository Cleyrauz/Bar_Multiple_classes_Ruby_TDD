require("minitest/autorun")
require("minitest/rg")

require_relative("../costumer")
require_relative("../pub")

class CostumerTest < MiniTest::Test

    def setup
      @costumer = Costumer.new("David", 60)
    end

    def test_costumer_has_name
      assert_equal("David", @costumer.name)
    end
    def test_costumer_has_money
      assert_equal(60, @costumer.wallet)
    end

  end
