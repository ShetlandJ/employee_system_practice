require("minitest/autorun")
require("minitest/rg")

require_relative("../cog")

class TestCog < MiniTest::Test

  def setup()
    @cog = Cog.new()
  end

end
