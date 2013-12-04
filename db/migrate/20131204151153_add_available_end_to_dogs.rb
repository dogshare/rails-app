class AddAvailableEndToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :available_end, :date
  end
end
