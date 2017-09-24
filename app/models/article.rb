class Article < ApplicationRecord
	validates_presence_of :title, :category, :content, :user_id
	belongs_to :user
end
