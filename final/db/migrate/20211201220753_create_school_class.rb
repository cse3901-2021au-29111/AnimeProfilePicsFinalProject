class CreateSchoolClass < ActiveRecord::Migration[6.1]
  def change
    create_table :school_classes do |t|
      t.integer :sectionNum
      t.timestamps
    end
  end
end
