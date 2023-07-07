class AddGoalDayToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :goal_day, :date
  end
end
