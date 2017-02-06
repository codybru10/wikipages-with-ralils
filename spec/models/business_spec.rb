require 'rails_helper'

describe Business do
  it {should validate_presence_of :name}
  it {should belong_to :business_type}
end
