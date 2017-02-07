require 'rails_helper'

describe "the edit business process" do
  it "edits a business" do
    bt = BusinessType.create(:name => "Plumbing")
    business = bt.businesses.create(:name => "Average Joes" )
    visit business_type_path(bt.id)
    click_on 'Edit Business'
    fill_in 'Name', :with => 'Supreme Joes'
    click_on 'Update Business'
    expect(page).to have_content 'Supreme Joes'
  end

  it "gives error when no name is entered" do
    bt = BusinessType.create(:name => "Plumbing")
    business = bt.businesses.create(:name => "Average Joes")
    visit business_type_path(bt)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Business'
    expect(page).to have_content 'errors'
  end
end
