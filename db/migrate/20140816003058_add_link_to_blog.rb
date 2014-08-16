class AddLinkToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :leg_link, :string
  end
end
