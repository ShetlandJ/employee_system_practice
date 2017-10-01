class Employee
  def initialize(first_name, last_name, role, salary, hours_per_day, years_at_company, job_performance)
    @first_name = first_name
    @last_name = last_name
    @role = role
    @salary = salary
    @hours_per_day = hours_per_day
    @years_at_company = years_at_company
    @job_performance = job_performance
  end

  def get_employee_first_name()
    return @first_name
  end

  def get_employee_last_name()
    return @last_name
  end

  def get_employee_role()
    return @role
  end

  def get_employee_salary()
    return @salary
  end


  def get_employee_working_hours_per_day()
    return @hours_per_day
  end

  def get_employee_working_hours_per_week()
    return @hours_per_day * 5
  end

  def get_employee_years_at_company()
    return @years_at_company
  end

  def get_employee_performance()
    return @job_performance
  end

  def promote(new_job_title)
    @role = new_job_title
  end

  def increase_salary(new_salary)
    @salary = new_salary
  end

  def change_working_hours(time)
    @hours_per_day += time
  end

  def increase_years_of_service(year)
    @years_at_company += year
  end

  def change_job_performance(annual_review_grade)
    @job_performance += annual_review_grade
  end
end
