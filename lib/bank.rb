require 'require_all'
require_all 'lib'

class Bank
  attr_reader :bank_number
  def initialize(bank_number)
    @bank_number = "#{bank_number}"
    @accounts = {}
  end

  def create_account(account_number, account = Account.new)
    @accounts[:"#{account_number}"] = account
  end
end
