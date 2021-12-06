class CreateLabs < ActiveRecord::Migration[6.1]
  def change
    create_table :labs do |t|
      t.string :lab_name

      t.timestamps
    end
  end
end
