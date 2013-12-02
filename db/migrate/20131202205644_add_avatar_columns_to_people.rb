class AddAvatarColumnsToPeople < ActiveRecord::Migration
  def self.up
    add_attachment :people, :img
  end

  def self.down
    remove_attachment :people, :img
  end
end
