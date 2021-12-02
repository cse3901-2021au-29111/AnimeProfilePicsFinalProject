class DropTableSchoolClasses < ActiveRecord::Migration[6.1]
  def change
    drop_table :school_classes
    drop_table :cars
    drop_table :owners
    drop_table :teams
  end
end
