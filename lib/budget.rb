class Budget

  attr :year,
       :departments,
       :salaries

  def initialize(year)
    @year = year
    @departments = []
    @salaries = []
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

  # def employees_salaries

  # end
end