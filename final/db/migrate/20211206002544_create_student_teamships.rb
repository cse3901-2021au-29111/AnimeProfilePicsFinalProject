class CreateStudentTeamships < ActiveRecord::Migration[6.1]
  def change
    create_table :student_teamships do |t|
      t.string :team_name

      t.timestamps
    end
  end
end
