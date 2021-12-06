class RenameColumnEval < ActiveRecord::Migration[6.1]
  def change
    rename_column :evaluations, :labs_id, :lab_id
  end
end
