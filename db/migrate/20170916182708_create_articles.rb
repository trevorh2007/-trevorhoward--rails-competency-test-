class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|

      t.timestamps
    end

    add_index :articles, :user_id
    add_foreign_key :articles, :users
  end
end
