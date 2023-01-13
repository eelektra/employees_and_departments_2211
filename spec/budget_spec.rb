require './lib/department'
require './lib/employee'
require './lib/budget'

describe Budget do
  describe 'initialize' do
    it 'exists and has attributes' do
      budget = Budget.new("2023")
      expect(budget).to be_a(Budget)
      expect(budget.year).to eq("2023")
    end

    it 'starts as an empty array' do
      budget = Budget.new("2023")
      customer_service = Department.new("Customer Service")    

      expect(budget.departments).to eq([])
      
      budget.add_departments(customer_service)

      expect(budget.departments).to eq([customer_service])
    end

    it 'starts as an empty array and lists departments' do
      budget = Budget.new("2023")
      customer_service = Department.new("Customer Service")    

      expect(budget.departments).to eq([])
      
      budget.add_departments(customer_service)

      expect(budget.departments).to eq([customer_service])
    end

   it 'lists departments with less than $500' do
      budget = Budget.new("2023")
      
      customer_service = Department.new("Customer Service")    

      budget.add_departments(customer_service)
           
      expect(budget.departments_under_500).to eq([customer_service])
    end

    # xit 'lists all employees' salaries' do
    #   budget = Budget.new("2023")

    # end
  end
end