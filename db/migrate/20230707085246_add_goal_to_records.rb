class AddGoalToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :goal, :string
  end
end
