class RemoveGoalFromRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :records, :goal, :string
  end
end
