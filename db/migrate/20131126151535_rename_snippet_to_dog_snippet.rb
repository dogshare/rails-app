class RenameSnippetToDogSnippet < ActiveRecord::Migration
  def change
    rename_column :dogs, :snippet, :dog_snippet
  end
end
