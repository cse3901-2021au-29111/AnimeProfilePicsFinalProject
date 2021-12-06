class UpdateLabs < ActiveRecord::Migration[6.1]
  def change
    remove_column :labs, :teams_id
  end
end
