require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  let(:article_valid) { FactoryGirl.create(:article) }

  let(:user) { FactoryGirl.create(:user) }

  let(:editor) { FactoryGirl.create(:editor) }

  let(:valid_attributes) {
    { title: "Article 1", category: "News", content: "Some content", user_id: article_valid.id }
  }

  let(:invalid_attributes) {
    { title: nil, category: 1, content: nil, user_id: "42" }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      article = Article.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      login_as(user)
      article = Article.create! valid_attributes
      get :show, params: {id: article.to_param}, session: valid_session
      expect(article).to be_valid
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      login_as(editor)
      get :new, params: {}, session: valid_session
      expect(response.status).to eq(302)
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      article = Article.create! valid_attributes
      get :edit, params: {id: article.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    before do
      login_as(editor)
    end
    context "with valid params" do
      it "creates a new Article" do
        expect {
          post :create, params: {article: valid_attributes}, session: valid_session
        }.to change(Article, :count).by(1)
      end

      it "redirects to the created article" do
        post :create, params: {article: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Article.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {article: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    before do
      login_as(editor)
    end
    context "with valid params" do
      let(:new_attributes) {
        { title: "New Title", category: "New Category", content: "New Content", user_id: 2 }
      }

      it "updates the requested article" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: new_attributes}, session: valid_session
        article.reload
        expect(article.title).to eq("New Title")
      end

      it "redirects to the article" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: valid_attributes}, session: valid_session
        expect(response).to redirect_to(article)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        article = Article.create! valid_attributes
        put :update, params: {id: article.to_param, article: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    before do
      login_as(editor)
    end
    it "destroys the requested article" do
      article = Article.create! valid_attributes
      expect {
        delete :destroy, params: {id: article.to_param}, session: valid_session
      }.to change(Article, :count).by(-1)
    end

    it "redirects to the articles list" do
      article = Article.create! valid_attributes
      delete :destroy, params: {id: article.to_param}, session: valid_session
      expect(response).to redirect_to(articles_url)
    end
  end

end
