class Department

  attr :name,
       :employees

  def initialize(name)
    @name = name
    @employees = []
  end
end