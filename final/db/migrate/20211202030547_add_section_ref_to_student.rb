class AddSectionRefToStudent < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :section
  end
end
