class AddNameToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :tName, :string
  end
end
