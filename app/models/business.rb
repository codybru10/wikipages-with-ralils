class Business < ActiveRecord::Base
  belongs_to :business_type

  validates :name, :presence => true
end
