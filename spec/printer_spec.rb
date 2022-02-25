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
  describe '#digits' do
    it 'will return the same float number' do
      expect(subject.digits(100.01)).to eq("100.01")
    end
    it 'will return the 2 float zeros digits at the end' do
      expect(subject.digits(100)).to eq("100.00")
    end
    it 'will return the last float zero digit at the end' do
      expect(subject.digits(100.1)).to eq("100.10")
    end
    it 'will return just the last 2 float digits at the end' do
      expect(subject.digits(100.1234)).to eq("100.12")
    end
  end
end
