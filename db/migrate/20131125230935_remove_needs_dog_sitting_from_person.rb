class RemoveNeedsDogSittingFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :needs_dogsitting, :text
  end
end
