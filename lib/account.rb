require 'require_all'
require_all 'lib'

class Account
  def initialize(printer = Printer.new)
    @printer = printer
    @statement = ['date || credit || debit || balance']
    @balance = 0.0
  end

  def deposit(amount)
    @balance += amount
    @statement << "#{@printer.date} || #{@printer.digits(amount)} || || #{@printer.digits(@balance)}"
  end

  def withdrawal(amount)
    money_availability(@balance, amount)
    @balance -= amount
    @statement << "#{@printer.date} || || #{@printer.digits(amount)} || #{@printer.digits(@balance)}"
  end

  def account_statement
    @printer.print(@statement)
  end
end
