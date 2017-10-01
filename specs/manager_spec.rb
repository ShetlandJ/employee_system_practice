require("minitest/autorun")
require("minitest/rg")

require_relative("../manager")

class TestManager < MiniTest::Test

  def setup()
    @manager = Manager.new()
  end

end
