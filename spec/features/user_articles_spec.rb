require "rails_helper"

describe "User Article" do
	before do
		@user = FactoryGirl.create(:user)
		article = FactoryGirl.create(:article)
	end

	it "can be viewed on show page by a logged in user" do
		login_as(@user)
		visit '/articles/1'

		expect(page).to have_content("User Article")
	end

	it "can not be edited" do
		visit '/articles'
		click_link('Edit')

		expect(current_path).to eq('/articles')
		expect(page).to have_content('Permission Denied')
	end

	it "can not be deleted" do

	end

	it "can not be created" do

	end

end