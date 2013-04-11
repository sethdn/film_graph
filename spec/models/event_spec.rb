require 'spec_helper'

describe Event do
  let(:event) { FactoryGirl.create(:event) }
  subject { event }

  it { should be_valid }

  describe "validations" do
    it { should validate_uniqueness_of(:show_time).scoped_to(:event_name) }
    it { should validate_presence_of(:event_name) }
  end
end