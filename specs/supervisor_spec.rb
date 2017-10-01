require("minitest/autorun")
require("minitest/rg")

require_relative("../supervisor")

class TestSupervisor < MiniTest::Test

  def setup()
  @supervisor = Supervisor.new()
  end

end
