require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  describe "associations" do
    it { is_expected.to have_many(:blogs).dependent(:destroy) }
  end
end
