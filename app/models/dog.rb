class Dog < ActiveRecord::Base
  belongs_to :owner, :class_name => "Person"
  has_many :sitters, :through => :dogshares, :class_name => "Person"

  has_many :dogshares

end
