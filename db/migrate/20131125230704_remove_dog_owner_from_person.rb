class RemoveDogOwnerFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :dog_owner, :boolean
  end
end
