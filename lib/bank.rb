require 'require_all'
require_all 'lib'

class Bank
  attr_reader :accounts
  def initialize
    @accounts = []
  end

  def create_account(account_number)
    @accounts << Account.new(account_number)
  end

  def all
    list = @accounts.map(&:account_number).join("\n")
    list
  end

  def select(account_num)
    @accounts.each do |selected|
      return selected if selected.account_number == account_num
    end
  end
end
