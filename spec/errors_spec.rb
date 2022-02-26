require 'require_all'
require_all 'lib'

describe 'Errors' do
  account = Account.new
  account.deposit(1000.00)

  describe '#money_availability' do
    it "raise an error if withdrawaled more than balance" do
      expect { account.withdrawal(1100.00) }.to raise_error(WithdrawalError)
      expect { account.withdrawal(-1) }.to raise_error(WithdrawalError)
    end
  end
  describe '#validation_deposit' do
    it "raise an error if deposit amount below 0" do
      expect { account.deposit(-1) }.to raise_error(DepositError)
    end
  end
end
