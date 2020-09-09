class Account
  attr_reader :account_number
  def initialize(number_of_account)
    @account_number = number_of_account
    @statement = ["date || credit || debit || balance"]
    @balance = 0.0
  end

  def print_account_statement
    @statement.join("\n")
  end

  def digits(float)                                         # I've made this method because of the .0
    number = (float - float.truncate) * 10                  # instead of .00 as required.
    (number - number.truncate) == 0 ? "#{float}0" : float   # (I didn't find any method for it)
  end
  
  def deposit(date, amount)                                                  # I decide to add as parameter
    @balance += amount                                                       # because of the acceptance criteria.
    @statement << "#{date} || #{digits(amount)} || || #{digits(@balance)}"   # Insteat to insert date I can use as well
  end                                                                        # "#{Time.now.day}-#{Time.now.month}-#{Time.now.year}"
end
