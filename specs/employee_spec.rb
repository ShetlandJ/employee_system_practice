require("minitest/autorun")
require("minitest/rg")

require_relative("../employee")

class TestEmployee < MiniTest::Test

  def setup()
    @employee = Employee.new()
  end

end
