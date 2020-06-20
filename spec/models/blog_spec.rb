require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "has a valid factory" do
    expect(build(:blog)).to be_valid
  end

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:comments) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
  end
end
