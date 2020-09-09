require 'require_all'
require_all 'lib'

describe Bank do
  describe "#createAccount" do
    it "increase the number of accounts" do
      subject.create_account("012345")
      expect(subject.accounts.length).to eq(1)
    end
  end
  describe "#all" do
    it "print the account number" do
       subject.create_account("012345")
       expect(subject.all).to eq("012345")
    end
    it "print multiple account numbers" do
       subject.create_account("12345")
       subject.create_account("67890")
       expect(subject.all).to eq("12345\n67890")
    end
  end
  describe "#select" do
    it "return the account selected by the number account" do
      subject.create_account("012345")
      account01 = subject.select("012345")
      expect(account01.account_number).to eq("012345")     
    end
  end
  # describe "#print_account_statement" do
  #   it "return 'date || credit || debit || balance'" do
  #     subject.create_account("012345")
  #     account01 = subject.select("012345")
  #     expect(account01.print_account_statement).to eq("date || credit || debit || balance")
  #   end
  # end
end
