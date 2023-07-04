class AddRateToRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :records, :rate, :integer, null: false
  end
end
