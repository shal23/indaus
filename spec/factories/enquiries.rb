# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enquiry do
    name "MyString"
    email "MyString"
    subject "MyString"
    message "MyText"
  end
end
