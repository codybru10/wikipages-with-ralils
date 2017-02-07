require 'rails_helper'

describe BusinessType do
  it 'validates presence of name' do
    business = FactoryGirl.create(:business_type)
    business.name.should eq 'Education'
  end
end
