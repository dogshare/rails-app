class AddColumnAvailableDayEndToDogshares < ActiveRecord::Migration
  def change
    add_column :dogshares,:available_day_end, :date
  end
end
