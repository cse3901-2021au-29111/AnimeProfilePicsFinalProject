class RenameTeamLabs < ActiveRecord::Migration[6.1]
  def change
    rename_column :team_labs, :labs_id, :lab_id
    rename_column :team_labs, :teams_id, :team_id
  end
end
