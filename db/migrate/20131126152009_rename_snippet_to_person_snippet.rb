class RenameSnippetToPersonSnippet < ActiveRecord::Migration
  def change
    rename_column :people, :snippet, :person_snippet
  end
end
