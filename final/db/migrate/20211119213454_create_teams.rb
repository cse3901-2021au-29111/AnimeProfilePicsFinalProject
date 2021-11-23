class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.integer :classId
      t.integer :adminId

      t.timestamps
    end
  end
end
