class AddSnippetToPerson < ActiveRecord::Migration
  def change
    add_column :people, :snippet, :text
  end
end
