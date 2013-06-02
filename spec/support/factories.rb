# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    name "CuddleWithUs"
    url "www.cuddlewith.us"
    email "plz@cuddlewith.us"
    codebase_url "www.github.com/cuddlewithus"
    props 0
  end
end
