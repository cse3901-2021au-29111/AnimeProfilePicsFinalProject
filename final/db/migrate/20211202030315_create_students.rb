class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.integer :buckID

      t.timestamps
    end
  end
end
