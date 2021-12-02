class DropExtras < ActiveRecord::Migration[6.1]
  def change

    drop_table :sections
  end
end
