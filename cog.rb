require_relative("employee")

class Cog < Employee
  def initialize(first_name, last_name, role, salary, hours_per_day, years_at_company, job_performance)
    super(first_name, last_name, role, salary, hours_per_day, years_at_company, job_performance)
    @name = "#{first_name} #{last_name}"
  end

  def get_name()
    return @name
  end

end
