require 'require_all'
require_all 'lib'

class Bank
  def initialize(bank_number)
    @bank_number = "#{bank_number}"
  end

  def bank_number
    @bank_number
  end
end
