class Leg < ActiveRecord::Base
belongs_to :user
  
  has_attached_file :map_img, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :map_img, :content_type => /\Aimage\/.*\Z/
  
 def to_param
    "#{id}-#{leg_header}"
  end
  
end
