class AddEditorToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :editor, :boolean

  end
end
