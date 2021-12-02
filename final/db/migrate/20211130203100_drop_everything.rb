class DropEverything < ActiveRecord::Migration[6.1]
  def change
    drop_table(:teams)
    drop_table(:school_classes)
    drop_table(:students)
    drop_table(:student_teamships)
  end
end
