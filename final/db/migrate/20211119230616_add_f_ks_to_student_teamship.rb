class AddFKsToStudentTeamship < ActiveRecord::Migration[6.1]
  def change
    add_column :student_teamships, :studentId, :intger
    add_column :student_teamships, :teamId, :integer
  end
end
