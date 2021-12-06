class AddEmailToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :email, :string
    add_index :students, :email, unique: true
  end
end
