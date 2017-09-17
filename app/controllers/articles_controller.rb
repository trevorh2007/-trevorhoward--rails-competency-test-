class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show], editor: [:new, :edit, :create, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    authenticate_user
    @articles = Article.all
  end

  def new
    if logged_in?(:editor)
      @article = Article.new
    else
      redirect_to root_path, alert: "You are not authorized to view this page"
    end
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :category, :content, :user_id)
    end

    def authenticate_user
      unless logged_in?(:user) || logged_in?(:editor)
        flash[:alert] = "Please create an account to view the full article."
        redirect_to(new_user_registration_path)
      end
    end
end
