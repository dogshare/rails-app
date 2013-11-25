class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :zip
      t.boolean :dog_owner
      t.boolean :picture
      t.text :available_to_dogsit
      t.text :needs_dogsitting

      t.timestamps
    end
  end
end
