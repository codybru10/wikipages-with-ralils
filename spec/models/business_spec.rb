require 'rails_helper'

describe Business do
  it { should belong_to :business_type }
  it "validates presence of name" do
    business = FactoryGirl.create(:business)
    business.name.should eq 'Epicodus'
  end
end
