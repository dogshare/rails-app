class ChangeNeedDaysTimesInDogshares < ActiveRecord::Migration
  def change
    change_column :dogshares, :need_days_times, :date
  end
end
