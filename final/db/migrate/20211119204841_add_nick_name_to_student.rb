class AddNickNameToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :nick, :string
  end
end
