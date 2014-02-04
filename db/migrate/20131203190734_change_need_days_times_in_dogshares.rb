class ChangeNeedDaysTimesInDogshares < ActiveRecord::Migration
  def change
    change_column :dogshares, :need_days_times, 'date USING CAST(need_days_times AS date)'
  end
end
