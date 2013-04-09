require 'spec_helper'

describe Venue do
  let(:venue) { FactoryGirl.create(:venue) }
  subject { venue }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end
end
