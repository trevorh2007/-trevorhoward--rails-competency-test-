FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
    roles "user"
  end

  factory :admin, class: "User" do
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
    roles "site_admin"
  end

  factory :editor, class: "User" do
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
    roles "editor"
  end
end