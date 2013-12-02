class AddAvatarColumnsToDogs < ActiveRecord::Migration
  def self.up
    add_attachment :dogs, :img
  end

  def self.down
    remove_attachment :dogs, :img
  end
end

