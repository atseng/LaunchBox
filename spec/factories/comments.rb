# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    text "MyText"
    first_name "MyString"
    last_name "MyString"
    email "MyString"
  end
end
