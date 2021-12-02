class RemoveSchoolFromTeams < ActiveRecord::Migration[6.1]
  def change
    remove_reference :teams, :SchoolClass_id
  end
end
