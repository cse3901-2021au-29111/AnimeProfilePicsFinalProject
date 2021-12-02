class AddReferenceToCars < ActiveRecord::Migration[6.1]
  def change
    add_reference :cars, :owner
  end
end
