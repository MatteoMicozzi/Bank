require 'require_all'
require_all 'lib'

class Bank
  attr_reader :accounts
  def initialize
    @accounts = []
  end

  def create_account(number_account)
    @accounts << Account.new(number_account)
  end

  def all
    list = @accounts.map { |account|
      account.account_number }.join("\n")
    return list
  end
end
