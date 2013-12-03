class RemoveAvailableToDogsitFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :available_to_dogsit, :text
  end
end
