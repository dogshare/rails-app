class ChangeNeedDaysTimesToAvailableDayStartInDogshares < ActiveRecord::Migration
  def change
    rename_column :dogshares, :need_days_times, :available_day_start
  end
end
