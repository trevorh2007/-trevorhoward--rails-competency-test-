require 'rails_helper'

describe 'Admin Articles' do
	before do 
		@admin = FactoryGirl.create(:admin)
		article = FactoryGirl.create(:article)
		login_as(@admin)
	end

	it "can not be edited as admin" do
		visit '/articles/1/edit'

		expect(current_path).to eq('/')
	end

	it "can not be deleted as admin" do
		visit '/articles'

		expect(page).to have_no_content("Destroy")
	end

	it "can not be created as admin" do
		visit '/articles/new'

		expect(current_path).to eq('/')
	end
end