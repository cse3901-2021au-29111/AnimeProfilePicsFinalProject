class ChangeMist < ActiveRecord::Migration[6.1]
  def change
    drop_table :school_classes
    drop_table :student_teamships
    create_table :sections do |t|
      t.integer :sectionNum
      t.timestamps
    end

    add_reference :teams, :section
    add_reference :students, :section
    create_table :rosters do |t|
      t.belongs_to :team
      t.belongs_to :student
      t.timestamps
    end
  end
end
