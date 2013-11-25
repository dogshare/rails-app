class AddNeedDaysTimesToDogshare < ActiveRecord::Migration
  def change
    add_column :dogshares, :need_days_times, :string
  end
end
