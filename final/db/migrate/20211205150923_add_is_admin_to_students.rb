class AddIsAdminToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :is_admin, :integer
  end
end
