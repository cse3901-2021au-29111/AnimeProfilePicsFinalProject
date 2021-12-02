class RemoveSchoolClassIdFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_column :teams, :SchoolClass_id
  end
end
