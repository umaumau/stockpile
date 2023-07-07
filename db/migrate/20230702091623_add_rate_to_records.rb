class AddRateToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :rate, :integer, null: false, default: 1
  end
end
