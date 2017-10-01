require_relative("employee")

class Cog < Employee
  def initialize(first_name, last_name, role, salary, hours_per_day, years_at_company, job_performance)
    @first_name = first_name
    @last_name = last_name
    @role = role
    @salary = salary
    @hours_per_day = hours_per_day
    @years_at_company = years_at_company
    @job_performance = job_performance
  end

  def get_name()
    p "hello"
  end

end
