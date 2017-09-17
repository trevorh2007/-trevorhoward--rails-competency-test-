class PagesController < ApplicationController

	def home
	end

	def admin
    if logged_in?(:site_admin)
      @article = Article.all
    else
      redirect_to root_path, alert: "You are not authorized to view this page"
    end
	end

end
