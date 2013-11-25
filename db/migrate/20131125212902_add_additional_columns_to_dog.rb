class AddAdditionalColumnsToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :snippet, :text
    add_column :dogs, :size, :string
    add_column :dogs, :gender, :string
  end
end
