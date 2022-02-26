require 'require_all'
require_all 'lib'

class WithdrawalError < StandardError; end

   def money_availability(balance, amount)
     raise WithdrawalError, "No valid amount! Maximum amount #{balance}." unless (balance - amount) > 0 
   end
