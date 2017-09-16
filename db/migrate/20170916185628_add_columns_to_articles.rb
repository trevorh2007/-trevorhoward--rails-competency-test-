class AddColumnsToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :content, :text
    add_column :articles, :category, :string
    add_column :articles, :user_id, :integer
  end
end
