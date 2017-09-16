class Article < ApplicationRecord

	validates_presence_of :title, :category, :content, :user_id
end
