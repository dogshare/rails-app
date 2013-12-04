class RemoveAvailableDayEndFromDogshare < ActiveRecord::Migration
  def change
    remove_column :dogshares, :available_day_end, :date
  end
end
