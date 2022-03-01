require 'require_all'
require_all 'lib'

describe Bank do
  describe '#bank_number' do
    it "will print the bank number" do
      bank01 = Bank.new('01')
      expect(bank01.bank_number).to eq('01')
    end
  end

  describe '#create_account' do
    it "will create a new account" do
      bank01 = Bank.new('01')
      bank01.create_account('01')
      expect(bank01.accounts.size).to eq(1)
    end
  end

  describe '#all' do
    it "will bring back all the accounts numbers" do
      bank01 = Bank.new('01')
      bank01.create_account('01'); bank01.create_account('02'); bank01.create_account('03')
      expect(bank01.all).to eq('01\n02\n03')
    end
  end

  describe '#select_account' do
    it "will select an existing account" do
      bank01 = Bank.new('01')
      bank01.create_account('01')
      expect(bank01.select_account('01').is_a? Account).to eq(true)
    end
  end

  describe '#delete_account' do
    it "will delete an existing account" do
      bank01 = Bank.new('01')
      bank01.create_account('01'); bank01.create_account('02'); bank01.create_account('03')
      expect(bank01.all).to eq('01\n02\n03')
      bank01.delete_account('01')
      expect(bank01.all).to eq('02\n03')
    end
  end
end
