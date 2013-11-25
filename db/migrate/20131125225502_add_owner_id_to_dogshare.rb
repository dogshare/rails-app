class AddOwnerIdToDogshare < ActiveRecord::Migration
  def change
    add_column :dogshares, :owner_id, :integer
  end
end
