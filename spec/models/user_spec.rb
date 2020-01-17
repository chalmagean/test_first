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
  end
end
