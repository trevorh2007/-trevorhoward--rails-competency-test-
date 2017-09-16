require "rails_helper"

describe "User Article" do

	it "can be viewed on show page by a logged in user" do
		FactoryGirl.create(:article)
		user = FactoryGirl.create(:user)
		login_as(user)
		visit '/articles/1'

		expect(page).to have_content("User Article")
	end

	it "can not be edited" do

	end

	it "can not be deleted" do

	end

	it "can not be created" do

	end

end