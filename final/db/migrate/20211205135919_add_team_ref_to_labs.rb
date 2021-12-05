class AddTeamRefToLabs < ActiveRecord::Migration[6.1]
  def change
    add_reference :labs, :teams, null: false, foreign_key: true
  end
end
