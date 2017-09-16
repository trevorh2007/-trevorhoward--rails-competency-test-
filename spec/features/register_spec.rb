require 'rails_helper'

feature 'User registration' do
  scenario 'user enters valid input' do
    visit '/register/join'

    within '#new_user' do
      fill_in 'Email',    with: 'signup@test.com'
      fill_in 'Password', with: 'asdfasdf'
      fill_in 'Password confirmation', with: 'asdfasdf'
      click_button 'Sign up'
    end

    expect(page).to have_content('Check out the top stories of the day!')
    expect(current_path).to eq '/'
  end
end