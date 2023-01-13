class Budget

  attr :year,
       :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_departments(department)
    @departments << department
  end

  def departments_under_500
   depts_under_500 = []
    @departments.each do |department|
      depts_under_500 << department if department.expenses < 500
    end
    depts_under_500
  end

  def salaries
    salaries_list = []
    @departments.each do |department|
      employee_array = department.employees
        employee_array.each do |employee|
          salaries_list << employee.salary
        end
    end
    salaries_list
  end
end