class AddAvailableStartToPeople < ActiveRecord::Migration
  def change
    add_column :people, :available_start, :datetime
  end
end
