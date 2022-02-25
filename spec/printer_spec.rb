require 'require_all'
require_all 'lib'

describe Printer do
  describe '#date' do
    it "return date format DD-MM-YYYY" do
      date = subject.date
      date = date.split("-")
      expect((date[0].to_i >= 1) && (date[0].to_i <= 31) && (date[1].to_i >= 1) && (date[1].to_i <= 12) && (date[2].length == 4)).to eq(true)
    end
  end
end
