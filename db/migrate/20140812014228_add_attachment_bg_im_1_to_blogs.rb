class AddAttachmentBgIm1ToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.attachment :bg_im_1
    end
  end

  def self.down
    remove_attachment :blogs, :bg_im_1
  end
end
