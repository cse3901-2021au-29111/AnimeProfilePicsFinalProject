class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.integer :evaluator_id
      t.integer :evaluated_id
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
