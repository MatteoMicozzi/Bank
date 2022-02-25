require 'require_all'
require_all 'lib'

describe Bank do
  describe '#' do
    it "will create a Bank object" do
      bank01 = Bank.new(01)
      expect(bank01.is_a? Bank).to eq(true)
    end
  end
  # describe '#' do
  #   it "" do
  #     expect().to eq()
  #   end
  # end
end
