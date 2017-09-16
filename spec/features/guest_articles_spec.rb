require "rails_helper"

describe "Guest Viewable Articles" do
	before do
		article = FactoryGirl.create(:article)
		admin_article = FactoryGirl.create(:admin_article)
		editor_article = FactoryGirl.create(:editor_article)
	end

  it 'home can be reached successfully and article is visible' do
	  visit root_path
	  expect(page).to have_content("User Article")
	  expect(page).to have_content("Admin Article")
	  expect(page).to have_content("Editor Article")
	  expect(page).to have_content("Category:")

	  expect(page.status_code).to eq(200)
	end

	it "can be viewed on index page" do
		visit '/articles'

		expect(page).to have_content("User Article")

	end

	it "article can not be viewed on show page" do
		visit '/articles/1'

		expect(current_path).to eq('/register/join')
	end

end