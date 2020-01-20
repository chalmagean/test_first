require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    context "when the name is longer than 100 characters" do
      it "the record is invalid" do
        user = User.new(name: "a" * 101)
        user.valid?
        expect(user.errors.keys).to include(:name)
      end
    end

    context "when the name is less than 2 characters" do
      it "the user is invalid" do
        user = User.new(name: "a")
        user.valid?
        expect(user.errors.keys).to include(:name)
      end
    end

    context "when the name contains emojis" do
      it "the user is invalid" do
        user = User.new(name: "Hi 🤨")
        user.valid?
        expect(user.errors.keys).to include(:name)
      end
    end
  end
end
