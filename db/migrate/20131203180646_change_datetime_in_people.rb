class ChangeDatetimeInPeople < ActiveRecord::Migration
  def change
    change_column :people, :available_start, :date
  end
end
