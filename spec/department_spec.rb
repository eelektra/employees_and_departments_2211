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
  end
end