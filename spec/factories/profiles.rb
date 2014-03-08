# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    nickname "MyString"
    bio "MyText"
    avatar "MyString"
    city "MyString"
    state "MyString"
  end
end
