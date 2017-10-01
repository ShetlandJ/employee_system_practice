require("minitest/autorun")
require("minitest/rg")

require_relative("../cog")

class TestCog < MiniTest::Test

  def setup()
    @cog1 = Cog.new("James", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
  end


  # getters

  def test_get_employee_first_name()
    assert_equal("James", @cog1.get_employee_first_name())
  end

  def test_get_employee_last_name()
    assert_equal("Stewart", @cog1.get_employee_last_name())
  end

  def test_get_employee_full_name()
    assert_equal("James Stewart", @cog1.get_employee_full_name())
  end

  def test_get_employee_role()
    assert_equal("Shelf stacker", @cog1.get_employee_role())
  end

  def test_get_employee_salary()
    assert_equal(14000.00, @cog1.get_employee_salary())
  end

  def test_get_working_hours_per_day()
    assert_equal(8, @cog1.get_employee_working_hours_per_day())
  end

  def test_get_working_hours_per_week()
    assert_equal(40, @cog1.get_employee_working_hours_per_week())
  end

  def test_get_employee_years_at_company()
    assert_equal(1, @cog1.get_employee_years_at_company())
  end

  def test_get_employee_performance()
    assert_equal(5, @cog1.get_employee_performance())
  end

  # setters

  def test_promote()
    @cog1.promote("Supervisor")
    assert_equal("Supervisor", @cog1.get_employee_role())
  end

  def test_increase_salary()
    @cog1.increase_salary(15000.00)
    assert_equal(15000.00, @cog1.get_employee_salary())
  end

  def test_change_workings_hours()
    @cog1.change_working_hours(1)
    assert_equal(9, @cog1.get_employee_working_hours_per_day())
  end

  def test_increase_years_at_company()
    @cog1.increase_years_of_service(1)
    assert_equal(2, @cog1.get_employee_years_at_company())
  end

  def test_change_job_performance()
    @cog1.change_job_performance(-1)
    assert_equal(4, @cog1.get_employee_performance())
  end

  # behaviours


end
