require 'rails_helper'

describe "Editor Article" do
	before do
		editor = FactoryGirl.create(:editor)
		login_as(editor)
	end

	it 'can be created' do
		visit '/articles'
		click_link('New Article')

    within 'form' do
      fill_in 'Title',     with: 'You can do it!'
      fill_in 'Content',   with: 'Mama says that alligators are ornery because they got all them teeth and no toothbrush.'
      fill_in 'Category',  with: 'Quotes'
      fill_in 'User',      with: 1
    	click_button 'Create Article'
    end


   	expect(current_path).to eq('/')
   	expect(page).to have_content("You can do it!")

	end

	it 'can be deleted' do

	end

	it 'can be edited' do

	end
	
end