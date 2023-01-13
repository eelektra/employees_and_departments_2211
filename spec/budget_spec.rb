require './lib/department'
require './lib/employee'
require './lib/budget'

describe Budget do
  describe 'initialize' do
    it 'exists and has attributes' do
      budget = Budget.new("2023")
      expect(budget).to be_a(Budget)
    end
  end
end