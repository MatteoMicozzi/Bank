require 'require_all'
require_all 'lib'

describe Account do
  describe '#print_account_statement' do
    it "return 'date || credit || debit || balance'" do
      expect(subject.print_account_statement).to eq('date || credit || debit || balance')
    end
  end
  describe '#deposit' do
    it 'can make a deposit of 1000.00' do
      subject.deposit('01-09-2020', 1000.00)
      expect(subject.print_account_statement).to eq("date || credit || debit || balance\n01-09-2020 || 1000.00 || || 1000.00")
    end
  end
  describe '#withdrawal' do
    it 'can withdrawal of 600.00 from the account' do
      subject.deposit('01-09-2020', 1000.00)
      subject.withdrawal('02-09-2020', 600.00)
      expect(subject.print_account_statement).to eq("date || credit || debit || balance\n01-09-2020 || 1000.00 || || 1000.00\n02-09-2020 || || 600.00 || 400.00")
    end
  end
end
