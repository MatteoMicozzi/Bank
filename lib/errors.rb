require 'require_all'
require_all 'lib'

class WithdrawalError < StandardError; end
class DepositError < StandardError; end

   def money_availability(balance, amount)
     raise WithdrawalError, "No valid amount! Valid amount between 0 and #{balance}." unless ((balance - amount) > 0) && amount > 0
   end

   def validation_deposit(amount)
     raise DepositError, "No valid amount! Valid amount above 0." unless amount > 0
   end
