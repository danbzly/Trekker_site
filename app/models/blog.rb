class Blog < ActiveRecord::Base

		belongs_to :user

  has_attached_file :image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_1, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_1, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_2, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_2, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_3, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_3, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_4, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_4, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_5, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_5, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_6, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_6, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_7, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_7, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :bg_im_8, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "195x125>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :bg_im_8, :content_type => /\Aimage\/.*\Z/
  
 validates_presence_of :slug

  def to_param
    slug
  end
end
