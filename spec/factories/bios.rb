# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bio do
    content "MyText"
    user nil
  end
end
