require("minitest/autorun")
require("minitest/rg")

require_relative("../cog")

class TestCog < MiniTest::Test

  def setup()
    @cog1 = Employee.new("James", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
  end

  def get_name()
    assert_equal("Brian", @cog1.get_name)
  end


end
