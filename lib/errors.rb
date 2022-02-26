require 'require_all'
require_all 'lib'

class NoAccountError < StandardError; end
class AccountNumberError < StandardError; end
class UnavailableAccountError < StandardError; end

class WithdrawalError < StandardError; end
class DepositError < StandardError; end


def accounts_availability(accounts)
  raise NoAccountError, "No account available!" unless accounts.size > 0
end
def validation_number(number)
  raise AccountNumberError, "Invalid account number! Please enter a 'number' with quotations." unless number.is_a? String
end
def availability_account(accounts, account_number)
  raise UnavailableAccountError, "No account available!" unless accounts.include?(account_number)
end


def money_availability(balance, amount)
  raise WithdrawalError, "Invalid amount! Valid amount between 0 and #{balance}." unless ((balance - amount) > 0) && amount > 0
end
def validation_deposit(amount)
  raise DepositError, "Invalid amount! Valid amount above 0." unless amount > 0
end
