class Department

  attr :name,
       :employees

  def initialize(name)
    @name = name
    @employees = []
  end

  def hire(employee)
    @employees << employee
  end
end