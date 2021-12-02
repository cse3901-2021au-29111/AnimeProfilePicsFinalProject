class DropStupid < ActiveRecord::Migration[6.1]
  def change
    drop_table :create_teams
    drop_table :create_sections

  end
end
