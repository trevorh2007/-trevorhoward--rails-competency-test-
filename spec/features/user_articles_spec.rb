require "rails_helper"

describe "User Article" do
	before do
		@user = FactoryGirl.create(:user)
		article = FactoryGirl.create(:article)
		login_as(@user)
	end

	it "can be viewed on show page by a logged in user" do
		visit '/articles/1'

		expect(page).to have_content("User Article")
	end

	it "can not be edited as user" do
		visit '/articles/1/edit'

		expect(current_path).to eq('/')
	end

	it "can not be deleted as user" do
		visit '/articles'

		expect(page).to have_no_content("Destroy")
	end

	it "can not be created as user" do
		visit '/articles/new'

		expect(current_path).to eq('/')
	end

end