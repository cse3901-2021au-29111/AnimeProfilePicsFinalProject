class AddReferenceToTeam < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :teams,:school_classes, column: :classId
  end
end
