class RemoveAvailableFromDogshare < ActiveRecord::Migration
  def change
    remove_column :dogshares, :available, :boolean
  end
end
