require 'require_all'
require_all 'lib'

describe 'Errors' do
  bank = Bank.new('01')
  account = Account.new
  account.deposit(1000.00)

  describe 'Bank #all' do
    it "raise an error if no account available" do
      expect { bank.all }.to raise_error(NoAccountError)
    end
  end
  
  describe 'Account #money_availability' do
    it "raise an error if withdrawaled more than balance" do
      expect { account.withdrawal(1100.00) }.to raise_error(WithdrawalError)
      expect { account.withdrawal(-1) }.to raise_error(WithdrawalError)
    end
  end
  describe 'Account #validation_deposit' do
    it "raise an error if deposit amount below 0" do
      expect { account.deposit(-1) }.to raise_error(DepositError)
    end
  end
end
