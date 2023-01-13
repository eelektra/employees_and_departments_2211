require './lib/department'
require './lib/employee'

describe Department do

  describe '#initialize' do
    it 'exists and has attributes' do
      customer_service = Department.new("Customer Service")    
      
      expect(customer_service).to be_a(Department)
      expect(customer_service.name).to eq("Customer Service")
    end

    it 'starts as an empty array' do
      customer_service = Department.new("Customer Service")    
      
      expect(customer_service.employees).to eq([])
    end

    it 'can add employees' do
      customer_service = Department.new("Customer Service")    
      bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) 

      customer_service.hire(bobbi)
      customer_service.hire(aaron)  

      expect(customer_service.employees).to eq([bobbi, aaron])
    end

  end
end