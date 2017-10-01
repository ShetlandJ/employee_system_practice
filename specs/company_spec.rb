require("minitest/autorun")
require("minitest/rg")

require_relative("../company")

class TestCompany < MiniTest::Test

  def setup()
    @company = Company.new()
  end

end
