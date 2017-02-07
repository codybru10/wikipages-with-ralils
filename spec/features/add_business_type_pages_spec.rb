require 'rails_helper'

describe "The add a business type process " do
  it "adds a new business type" do
    visit business_types_path
    click_link 'NEW BUSINESS'
    fill_in 'Name', :with => 'Adult Stores'
    click_on 'Create Business type'
    expect(page).to have_content 'Business Types'
  end

  it "gives error when no name is entered" do
    visit new_business_type_path
    click_on 'Create Business type'
    expect(page).to have_content 'errors'
  end
end
