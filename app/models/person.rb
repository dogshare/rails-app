class Person < ActiveRecord::Base
  has_many :dogs

  # has_many :owned_dogs, :foreign_key => "owner_id", :class_name => "Dogs"
  # has_many :available_dogs, :through => :dogshares, :class_name => "Dogs"

  has_many :dogshares, :foreign_key => "dogshare_id"

end
