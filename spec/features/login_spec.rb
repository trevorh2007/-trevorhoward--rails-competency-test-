require 'rails_helper'

describe "Log in" do
  before do
    user = User.create(email: "logintest@example.com", password: "asdfasdf", password_confirmation: "asdfasdf")
  end

  it 'Guest or not logged in user can log in' do
    visit '/login'

    within '#new_user' do
      fill_in 'Email',    with: 'logintest@example.com'
      fill_in 'Password', with: 'asdfasdf'
      click_button 'Log in'
    end

    expect(current_path).to eq '/'
  end

end