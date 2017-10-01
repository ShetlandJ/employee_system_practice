require("minitest/autorun")
require("minitest/rg")

require_relative("../employee")

class TestEmployee < MiniTest::Test

  def setup()
    @employee1 = Employee.new("Joey", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
  end

  def test_get_employee_first_name()
    assert_equal("James", @employee1.get_employee_first_name)
  end

  def test_get_employee_last_name()
    assert_equal("Stewart", @employee1.get_employee_last_name)
  end

  def test_get_employee_role()
    assert_equal("Shelf stacker", @employee1.get_employee_role)
  end

  def test_get_employee_salary()
    assert_equal(14000.00, @employee1.get_employee_salary)
  end

  def test_get_working_hours_per_day()
    assert_equal(8, @employee1.get_employee_working_hours_per_day)
  end

  def test_get_working_hours_per_week()
    assert_equal(40, @employee1.get_employee_working_hours_per_week)
  end

  def test_get_employee_years_at_company()
    assert_equal(1, @employee1.get_employee_years_at_company)
  end


  def test_get_employee_performance()
    assert_equal(5, @employee1.get_employee_performance)
  end


  def test_promote()
    @employee1.promote("Supervisor")
    assert_equal("Supervisor", @employee1.get_employee_role)
  end

  def test_increase_salary()
    @employee1.increase_salary(15000.00)
    assert_equal(15000.00, @employee1.get_employee_salary)
  end

  def test_change_workings_hours()
    @employee1.change_working_hours(1)
    assert_equal(9, @employee1.get_employee_working_hours_per_day)
  end

  def test_increase_years_at_company()
    @employee1.increase_years_of_service(1)
    assert_equal(2, @employee1.get_employee_years_at_company)
  end

  def test_change_job_performance()
    @employee1.change_job_performance(-1)
    assert_equal(4, @employee1.get_employee_performance)
  end
end
