require 'require_all'
require_all 'lib'

class Bank
  attr_reader :bank_number, :accounts

  def initialize(bank_number)
    @bank_number = "#{bank_number}"
    @accounts = {}
  end

  def all
    accounts_availability(@accounts)
    list = []
    @accounts.each { |number, object| list.push(number) }
    list.join('\n')
  end

  def create_account(account_number, account = Account.new)
    validation_number(account_number)
    @accounts[account_number] = account
  end

  def select_account(account_number)
    validation_number(account_number)
    @accounts[account_number]
  end

  def delete_account(account_number)
    validation_number(account_number)
    @accounts.delete(account_number)
  end
end
