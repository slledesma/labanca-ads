require 'spec_helper'

describe Advertisement do
  context "with a price <=0" do
    before do
      subject.price=0
    end 	

    it "should not be valid" do
      subject.should have(1).error_on(:price)
    end
  end

context "with a price >0" do
    before do
      subject.price=1
    end 	

    it "should be valid" do
      subject.should be_valid
    end
  end

end
