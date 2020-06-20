require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "has a valid factory" do
    expect(build(:comment)).to be_valid
  end

  describe "associations" do
    it { is_expected.to belong_to(:blog) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:body) }
  end
end
