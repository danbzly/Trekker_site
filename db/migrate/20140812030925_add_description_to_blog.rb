class AddDescriptionToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :im_1_des, :string
    add_column :blogs, :im_2_des, :string
    add_column :blogs, :im_3_des, :string
    add_column :blogs, :im_4_des, :string
    add_column :blogs, :im_5_des, :string
    add_column :blogs, :im_6_des, :string
    add_column :blogs, :im_7_des, :string
    add_column :blogs, :im_8_des, :string
  end
end
