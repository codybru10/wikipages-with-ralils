require 'rails_helper'

describe BusinessType do
  it { should validate_presence_of :name }
  it { should have_many :businesses }
end
