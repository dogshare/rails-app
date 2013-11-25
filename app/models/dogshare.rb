class Dogshare < ActiveRecord::Base
  belongs_to :dog 
  belongs_to :sitter, :class_name => "Person"
  belongs_to :owner, :class_name => "Person"
  
end
