require("minitest/autorun")
require("minitest/rg")

require_relative("../supervisor")

class TestSupervisor < MiniTest::Test

  def setup()
  @supervisor = Supervisor.new()
    @supervisor1 = Supervisor.new("James", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
  end


  # getters

  def test_get_employee_first_name()
    assert_equal("James", @supervisor1.get_employee_first_name())
  end

  def test_get_employee_last_name()
    assert_equal("Stewart", @supervisor1.get_employee_last_name())
  end

  def test_get_employee_full_name()
    assert_equal("James Stewart", @supervisor1.get_employee_full_name())
  end

  def test_get_employee_role()
    assert_equal("Shelf stacker", @supervisor1.get_employee_role())
  end

  def test_get_employee_salary()
    assert_equal(14000.00, @supervisor1.get_employee_salary())
  end

  def test_get_working_hours_per_day()
    assert_equal(8, @supervisor1.get_employee_working_hours_per_day())
  end

  def test_get_working_hours_per_week()
    assert_equal(40, @supervisor1.get_employee_working_hours_per_week())
  end

  def test_get_employee_years_at_company()
    assert_equal(1, @supervisor1.get_employee_years_at_company())
  end

  def test_get_employee_performance()
    assert_equal(5, @supervisor1.get_employee_performance())
  end

  # setters

  def test_promote()
    @supervisor1.promote("Manager")
    assert_equal("Manager", @supervisor1.get_employee_role())
  end

  def test_increase_salary()
    @supervisor1.increase_salary(20000.00)
    assert_equal(20000.00, @supervisor1.get_employee_salary())
  end

  def test_change_workings_hours()
    @supervisor1.change_working_hours(1)
    assert_equal(9, @supervisor1.get_employee_working_hours_per_day())
  end

  def test_increase_years_at_company()
    @supervisor1.increase_years_of_service(1)
    assert_equal(2, @supervisor1.get_employee_years_at_company())
  end

  def test_change_job_performance()
    @supervisor1.change_job_performance(-1)
    assert_equal(4, @supervisor1.get_employee_performance())
  end

  # behaviours



end
