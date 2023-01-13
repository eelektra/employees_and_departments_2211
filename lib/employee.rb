class Employee

  attr :name,
       :age,
       :salary

  def initialize(info)
    @name = info[:name]
    @age = info[:age].to_i
    @salary = info[:salary].delete('$').to_i
  end
end