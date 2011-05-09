require "spec_helper"

describe Notifications do
  describe "too_expensive" do
    let(:mail) { Notifications.too_expensive }

    it "renders the headers" do
      mail.subject.should eq("Too expensive")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
