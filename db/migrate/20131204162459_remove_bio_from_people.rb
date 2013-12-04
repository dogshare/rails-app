class RemoveBioFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :Bio, :text
  end
end
