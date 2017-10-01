require("minitest/autorun")
require("minitest/rg")

require_relative("../manager")

class TestManager < MiniTest::Test

  def setup()
    @manager1 = Manager.new("Steph", "Stewart", "Manager", 60000.00, 12, 10, 8)
  end

  def test_get_employee_first_name()
    assert_equal("Steph", @manager1.get_employee_first_name())
  end

  def test_get_employee_last_name()
    assert_equal("Stewart", @manager1.get_employee_last_name())
  end

  def test_get_employee_full_name()
    assert_equal("Steph Stewart", @manager1.get_employee_full_name())
  end

  def test_get_employee_role()
    assert_equal("Manager", @manager1.get_employee_role())
  end

  def test_get_employee_salary()
    assert_equal(60000.00, @manager1.get_employee_salary())
  end

  def test_get_working_hours_per_day()
    assert_equal(12, @manager1.get_employee_working_hours_per_day())
  end

  def test_get_working_hours_per_week()
    assert_equal(60, @manager1.get_employee_working_hours_per_week())
  end

  def test_get_employee_years_at_company()
    assert_equal(10, @manager1.get_employee_years_at_company())
  end

  def test_get_employee_performance()
    assert_equal(8, @manager1.get_employee_performance())
  end

  # setters
  #
  # def test_promote()
  #   @manager1.promote("Supervisor")
  #   assert_equal("Supervisor", @manager1.get_employee_role())
  # end

  def test_increase_salary()
    @manager1.increase_salary(65000.00)
    assert_equal(65000.00, @manager1.get_employee_salary())
  end

  def test_change_workings_hours()
    @manager1.change_working_hours(-2)
    assert_equal(10, @manager1.get_employee_working_hours_per_day())
  end

  def test_increase_years_at_company()
    @manager1.increase_years_of_service(1)
    assert_equal(11, @manager1.get_employee_years_at_company())
  end

  def test_change_job_performance()
    @manager1.change_job_performance(1)
    assert_equal(9, @manager1.get_employee_performance())
  end

  # behaviours


end
