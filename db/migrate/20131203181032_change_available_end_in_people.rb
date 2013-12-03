class ChangeAvailableEndInPeople < ActiveRecord::Migration
  def change
    change_column :people, :available_end, :date
  end
end
