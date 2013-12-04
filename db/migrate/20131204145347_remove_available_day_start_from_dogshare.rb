class RemoveAvailableDayStartFromDogshare < ActiveRecord::Migration
  def change
    remove_column :dogshares, :available_day_start, :date
  end
end
