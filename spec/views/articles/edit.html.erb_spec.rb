require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = FactoryGirl.create(:article)
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do
    end
  end
end
