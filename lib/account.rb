class Account
  attr_reader :account_number
  def initialize(number_of_account)
    @account_number = number_of_account
    @statement = ["date || credit || debit || balance"]
  end

  def print_account_statement
    @statement.join("\n")
  end
end
