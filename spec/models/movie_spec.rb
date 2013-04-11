require 'spec_helper'

describe Movie do
  let(:movie) { FactoryGirl.create(:movie) }
  subject { movie }

  it { should be_valid }
  it { should respond_to(:title) }
  it { should respond_to(:artist) }
  it { should respond_to(:length_minutes) }
  it { should respond_to(:year) }
  it { should respond_to(:country) }
  it { should respond_to(:description) }

  describe "validations" do
    it { should validate_presence_of(:title) }
  end
end
