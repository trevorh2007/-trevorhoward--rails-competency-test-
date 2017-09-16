require 'rails_helper'

describe "Logout" do

  it 'can be performed by user' do
  	user = FactoryGirl.create(:user)
  	login_as(user)
  	visit root_path
  	click_link('Logout')

  	expect(current_path).to eq('/')
  	expect(page).to have_content("Sign Up")
  end

  it 'can be performed by editor' do
  	editor = FactoryGirl.create(:editor)
  	login_as(editor)
  	visit root_path
  	click_link('Logout')

  	expect(current_path).to eq('/')
  	expect(page).to have_content("Sign Up")
  end

  it 'can be performed by admin' do
  	admin = FactoryGirl.create(:admin)
  	login_as(admin)
  	visit root_path
  	click_link('Logout')

  	expect(current_path).to eq('/')
  	expect(page).to have_content("Sign Up")
  end    

end