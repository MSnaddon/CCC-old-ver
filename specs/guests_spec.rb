require("Minitest/autorun")
require("Minitest/rg")
require_relative("../guests")

class TestGuests < Minitest::Test
  def setup 
    @guest1 = Guest.new("Jazolt Valony", 200)
    @guest2 = Guest.new("Leimily Susaig",  25)
  end

  def test_guest_has_name
    assert_equal("Jazolt Valony", @guest1.name)
  end
  
  def test_can_read_guest_cash
    assert_equal(200,@guest1.cash)
  end

  def test_can_take_guest_cash__sufficient
    result = @guest1.can_afford?(50)
    assert_equal(true, result)
  end

end