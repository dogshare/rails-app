class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.text :description
      t.string :temperament
      t.string :active
      t.boolean :housetrained
      t.boolean :picture
      t.text :special_needs

      t.timestamps
    end
  end
end
