# I've made method digits() 'line_16' because of the .0 instead of .00
# as required. (I didn't find any method for it in rubydoc)
# I decide to add date as parameter on .deposit() & .withdrawal()
# because of the acceptance criteria. Insteat to insert date I can use as well
# t = Time.now
# "#{t.day}-#{t.month}-#{t.year}"

require 'require_all'
require_all 'lib'

class Account
  def initialize
    @account_number = number_of_account
    @statement = ['date || credit || debit || balance']
    @balance = 0.0
  end

  def print_account_statement
    @statement.join("\n")
  end

  def digits(float)
    number = (float - float.truncate) * 10
    (number - number.truncate).zero? ? "#{float}0" : float
  end

  def deposit(date, amount)
    @balance += amount
    @statement << "#{date} || #{digits(amount)} || || #{digits(@balance)}"
  end

  def withdrawal(date, amount)
    @balance -= amount
    @statement << "#{date} || || #{digits(amount)} || #{digits(@balance)}"
  end
end
