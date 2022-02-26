require 'require_all'
require_all 'lib'

describe '#money_availability' do
  it "raise an error if withdrawaled more than balance" do
    account = Account.new
    account.deposit(1000.00)
    expect { account.withdrawal(1100.00) }.to raise_error(WithdrawalError)
    expect { account.withdrawal(-1) }.to raise_error(WithdrawalError)
  end
end
