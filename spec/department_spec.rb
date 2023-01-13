require './lib/department'
require './lib/employee'

describe Department do

  describe '#initialize' do
    it 'exists and has attributes' do
      customer_service = Department.new("Customer Service")    
      expect(customer_service).to be_a(Department)
    end
  end
end