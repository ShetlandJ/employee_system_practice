require_relative('employee')
require_relative('manager')
require_relative('supervisor')
require_relative('cog')

class Company
  def initialize(name, employees, performance, cash)
    @name = name
    @employees = employees
    @performance = performance
    @available_cash = cash
  end


  # getters

  def name()
    return @name
  end

  def employees()
    return @employees
  end

  def performance()
    return @performance
  end

  def cash()
    return @available_cash
  end


  # setters

  def set_name(name)
    @name = name
  end

  def add_employee(employee)
    @employees << employee
  end

  def set_performance(performance)
    @performance = performance
  end

  def add_investment(investment)
    @available_cash += investment
  end


  # behaviour


end
