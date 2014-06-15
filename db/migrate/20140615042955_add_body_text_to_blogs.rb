class AddBodyTextToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :body_text, :text
  end
end
