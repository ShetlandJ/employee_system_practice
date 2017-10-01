require("minitest/autorun")
require("minitest/rg")

require_relative("../cog")

class TestCog < MiniTest::Test

  def setup()
    @cog1 = Cog.new("James", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
  end

  def test_get_employee_first_name()
    assert_equal("James", @cog1.get_employee_first_name())
  end

  def test_get_name()
    assert_equal("James Stewart", @cog1.get_name())
  end


end
