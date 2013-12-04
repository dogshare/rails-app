class Person < ActiveRecord::Base

  has_many :owned_dogs, :foreign_key => "owner_id", :class_name => "Dogs"
  has_many :sat_dogs, :through => :dogshares, :class_name => "Dogs"
  has_many :dogshares, :foreign_key => "dogshare_id"

  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "200x200>" }, :default_url => ":style/dogpaw.png"
end