class CreateTeamLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :team_labs do |t|

      t.timestamps
    end
    add_reference :team_labs, :teams, null: false, foreign_key: true
    add_reference :team_labs, :labs, null: false, foreign_key: true
  end
end
