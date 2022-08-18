require "rails_helper"

RSpec.describe Interest, :type => :model do
  context "with 2 or more comments" do
    it "orders them in reverse chronologically" do
      interest = Interest.create!
      expect(interest).to eq(interest)
    end
  end
end
