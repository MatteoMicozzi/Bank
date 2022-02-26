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
  describe 'Bank #create_account' do
    it "raise an error if an invalid account number is entered" do
      expect { bank.create_account(01) }.to raise_error(AccountNumberError)
    end
  end
  describe 'Bank #select' do
    it "raise an error if an invalid account number is entered and if isn't present" do
      expect { bank.select_account(01) }.to raise_error(AccountNumberError)
      expect { bank.select_account('10') }.to raise_error(UnavailableAccountError)
    end
  end
  describe 'Bank #delete' do
    it "raise an error if an invalid account number is entered and if isn't present" do
      expect { bank.delete_account(01) }.to raise_error(AccountNumberError)
      expect { bank.delete_account('10') }.to raise_error(UnavailableAccountError)
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
