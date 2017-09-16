require "rails_helper"

describe "User Viewable Articles" do
	before do
		article = FactoryGirl.create(:article)
	end

	it "article can be viewed on show page by a logged in user" do
		user = FactoryGirl.create(:user)
		login_as(user)
		visit '/articles/1'

		expect(page).to have_content("User Article")
	end

end