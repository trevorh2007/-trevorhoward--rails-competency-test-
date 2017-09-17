require 'rails_helper'

describe 'Admin' do
	before do
		@admin = FactoryGirl.create(:admin)
		login_as(@admin)
	end

	it 'can create a new user and set user role' do
		visit '/admin/user/new'


    within '#new_user' do
      fill_in 'Email',    with: 'logintest@example.com'
      fill_in 'Password', with: 'asdfasdf'
      fill_in 'Password confirmation', with: 'asdfasdf'
      fill_in 'Roles', with: 'user'
      click_button('Save')
    end

    expect(current_path).to eq '/admin/user'
    expect(page).to have_content("User successfully created")
    expect(page).to have_content("logintest@example.com")
    expect(User.last.email).to eq("logintest@example.com")
	end

	it 'can edit user and change role' do
		user = FactoryGirl.create(:user)
		visit '/admin/user/1/edit'

		within '#edit_user' do
			fill_in 'Email',    with: 'replaceemail@test.com'
      fill_in 'Password', with: 'fdsafdsa'
      fill_in 'Password confirmation', with: 'fdsafdsa'
      fill_in 'Roles', with: 'editor'
      click_button('Save')
		end

    expect(current_path).to eq '/admin/user'
    expect(page).to have_content("User successfully updated")
    expect(page).to have_content("replaceemail@test.com")
    expect(User.first.email).to eq("replaceemail@test.com")

	end

	it 'can delete a user' do
		user = FactoryGirl.create(:user)
		visit '/admin/user/1/delete'
		click_button("Yes, I'm sure")

    expect(current_path).to eq '/admin/user'
    expect(page).to have_content("User successfully deleted")
	end
end