require 'require_all'
require_all 'lib'

describe Bank do
  describe '#bank_number' do
    it "will print the bank number" do
      bank01 = Bank.new('01')
      bank10 = Bank.new(10)
      expect(bank01.bank_number).to eq('01')
      expect(bank10.bank_number).to eq('10')
    end
  end
  # describe '#' do
  #   it "" do
  #     expect().to eq()
  #   end
  # end
end
