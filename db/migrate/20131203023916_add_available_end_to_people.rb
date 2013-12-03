class AddAvailableEndToPeople < ActiveRecord::Migration
  def change
    add_column :people, :available_end, :datetime
  end
end
