class AddAvailableStartToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :available_start, :date
  end
end
