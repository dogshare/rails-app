class Dog < ActiveRecord::Base
  belongs_to :owner, :class_name => "Person"
  has_many :sitters, :through => :dogshares, :class_name => "Person"
  has_many :dogshares

  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  # validates_attachment_presence :photo
  # validates_attachment_size :photo, :less_than => 5.megabytes
  # validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


end
