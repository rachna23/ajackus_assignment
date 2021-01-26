FactoryGirl.define do
  factory :contact do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    email       { Faker::Internet.email }
    phone       { "7697383838" }
    message     {"This is testing"}
  end

  factory :invalid_contact, parent: :contact do |f|
    f.first_name nil
  end
end