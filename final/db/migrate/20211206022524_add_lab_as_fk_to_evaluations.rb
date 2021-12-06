class AddLabAsFkToEvaluations < ActiveRecord::Migration[6.1]
  def change
    add_reference :evaluations, :labs, null: false, foreign_key: true
  end
end
