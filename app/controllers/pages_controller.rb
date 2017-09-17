class PagesController < ApplicationController

	def home
	end

	def admin
    redirect_to root_path, alert: "You are not authorized to view this page" unless logged_in?(:site_admin)
	end

end
