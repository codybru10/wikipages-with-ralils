FactoryGirl.define do
  factory :business_type  do
    name('Education')
  end

  factory :business do
    business_type
    name "Epicodus"
  end
end
