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
  end
end
