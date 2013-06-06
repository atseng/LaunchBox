# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :app do
    name "CuddleWithUs"
    url "www.cuddlewith.us"
    email "plz@cuddlewith.us"
    description "here s the description"
    codebase_url "www.github.com/cuddlewithus"
    props 0
  end

  factory :comment do
  	first_name "One Eyed"
  	last_name "Jack"
  	email "jackme@up"
  	text "I see all of the world when my eye spins round'"
  end
end
