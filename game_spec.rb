require './game'

describe Game do
 context "initialized with 5 hits" do

  describe "#score" do
    it "returns 0 for all gutter game" do
      20.times { subject.roll(0) }

      subject.score.should be_zero
    end

    it "returns te sum of the hitted pins" do
      subject.roll 5
      subject.roll 10

      subject.score.should == 15
    end
  end

  describe "#roll" do
    it "should be tested  soon!!!"
  end

end

