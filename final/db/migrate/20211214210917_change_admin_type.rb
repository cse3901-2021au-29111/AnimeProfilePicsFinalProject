class ChangeAdminType < ActiveRecord::Migration[6.1]
  def change
    change_column :students, :is_admin, :boolean
  end
end
