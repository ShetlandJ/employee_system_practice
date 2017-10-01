require("minitest/autorun")
require("minitest/rg")

require_relative("../company")
require_relative("../employee")
require_relative("../manager")
require_relative('../supervisor')
require_relative('../cog')

class TestCompany < MiniTest::Test

  def setup()

    # (first_name, last_name, role, salary, hours_per_day, years_at_company, job_performance)

    @employee_1 = Employee.new("James", "Stewart", "Shelf stacker", 14000.00, 8, 1, 5)
    @employee_2 = Employee.new("David", "Evans", "Manager", 14000.00, 8, 1, 5)
    @employee_3 = Employee.new("Alfie", "Howard", "Supervisor", 14000.00, 8, 1, 5)
    @employee_4 = Employee.new("Betty", "Evans", "Shelf stacker", 14000.00, 8, 1, 5)
    @employee_5 = Employee.new("Keith", "Adrian", "Shelf stacker", 14000.00, 8, 1, 5)

    @employees = [ @employee_1, @employee_2, @employee_3, @employee_4 ]

    @company = Company.new("Morrisons", @employees, 5, 50000000.00)

  end


  # getters

  def test_name()
    assert_equal("Morrisons", @company.name())
  end

  def test_employees()
    assert_equal(@employees, @company.employees())
  end

  def test_performance()
    assert_equal(5, @company.performance())
  end

  def test_cash()
    assert_equal(50000000, @company.cash())
  end


  # setters

  def test_can_set_name()
    @company.set_name("Casablancas")

    assert_equal("Casablancas", @company.name())
  end

  def test_can_add_employee()
    expected = [ @employee_1, @employee_2, @employee_3, @employee_4, @employee_5 ]
    @company.add_employee(@employee_5)

    actual = @company.employees()

    assert_equal(expected, actual)
  end

  def test_can_set_performance()
    expected = 10
    @company.set_performance(10)

    actual = @company.performance()

    assert_equal(expected, actual)
  end

  def test_can_add_investment()
    expected = 70000000
    @company.add_investment(20000000.00)
    actual = @company.cash()

    assert_equal(expected, actual)
  end


  # behaviour

end
