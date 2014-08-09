class AddAttachmentMapImgToLegs < ActiveRecord::Migration
  def self.up
    change_table :legs do |t|
      t.attachment :map_img
    end
  end

  def self.down
    remove_attachment :legs, :map_img
  end
end
