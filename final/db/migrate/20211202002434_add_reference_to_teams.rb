class AddReferenceToTeams < ActiveRecord::Migration[6.1]
  def change
    add_reference :teams, :section
  end
end
